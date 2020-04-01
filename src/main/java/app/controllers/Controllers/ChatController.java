package app.controllers.Controllers;

import app.controllers.Dao.BlockDao;
import app.controllers.Models.BlackList;
import app.controllers.Models.SiteUser;
import app.controllers.Models.dto.ChatRequest;
import app.controllers.Models.dto.SimpleMessage;
import app.controllers.Models.entity.Message;
import app.controllers.Services.MessageService;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.data.domain.Page;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@Configurable
public class ChatController {

    @Autowired
    private SimpMessagingTemplate simpMessagingTemplate;

    @Autowired
    private Util util;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageService messageService;

    @Autowired
    private BlockDao blockDao;

    @RequestMapping("/markread")
    String markRead(@RequestParam("f") long userId, @RequestParam("m") long messageId) {

        Optional<Message> messageOpt = messageService.get(messageId);

        if(messageOpt.isPresent()) {
            Message message = messageOpt.get();

            message.setRead(true);
            messageService.save(message);
        }

        return "redirect:/chatview/" + userId;
    }

    @RequestMapping("/messages")
    ModelAndView expiredToken(ModelAndView modelAndView, @RequestParam("p") int pageNumber) {

        SiteUser user = util.getUser();
        Page<SimpleMessage> messages = messageService.fetchMessageListPage(user.getId(), pageNumber);

        modelAndView.getModel().put("messageList", messages);
        modelAndView.getModel().put("pageNumber", pageNumber);
        modelAndView.getModel().put("userId", user.getId());

        modelAndView.setViewName("app.checkmessages");
        return modelAndView;
    }

    @RequestMapping(value = "/conversation/{otherUserId}", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    List<SimpleMessage> fetchConversation(@PathVariable("otherUserId") Long otherUserId, @RequestBody ChatRequest request){
       SiteUser thisUser = util.getUser();
        List<SimpleMessage> list = messageService.fetchConversation(thisUser.getId(), otherUserId, request.getPage());
        return list;
    }

    @RequestMapping("/chatview/{id}")
    ModelAndView chatView(ModelAndView modelAndView, @PathVariable Long id) {

        SiteUser thisUser = util.getUser();
        String chatWithUserName = userService.getUserName(id);

        modelAndView.setViewName("app.chatview");
        modelAndView.getModel().put("thisUserID", thisUser.getId());
        modelAndView.getModel().put("chatWithUserID", id);
        modelAndView.getModel().put("chatWithUserName", chatWithUserName);

        return modelAndView;
    }

    @MessageMapping("/message/send/{toUserID}")
    public void send(Principal principal, SimpleMessage message, @DestinationVariable Long toUserID) throws NoSuchMethodException {
        System.out.println(message);

        String fromUsername = principal.getName();
        SiteUser fromUser = userService.get(fromUsername);
        Long fromUserId = fromUser.getId();

        SiteUser toUser = userService.get(toUserID);
        String toUsername = toUser.getEmail();


Boolean fobid = false;
        String returnReceiptQueue = String.format("/queue/%d", toUserID);
        String toUserQueue = String.format("/queue/%d", fromUserId);

        List<BlackList> blackList = blockDao.findForbidden(fromUserId);
        for (BlackList list: blackList)
            if (list.getOwn() == toUserID)
                fobid = true;

            if(!fobid)
        messageService.save(fromUser, toUser, message.getText());

//message.setFrom("jhvjhv");
        message.setIsReply(false);
message.setFromUserId(fromUserId);


        simpMessagingTemplate.convertAndSendToUser(fromUsername, returnReceiptQueue, message);

        message.setFrom(fromUser.getFirstname()+" " + fromUser.getSurname());

        message.setIsReply(true);

        simpMessagingTemplate.convertAndSendToUser(toUsername, toUserQueue, message);


        simpMessagingTemplate.convertAndSendToUser(toUsername, "/queue/newmessages", message);



    }
}
