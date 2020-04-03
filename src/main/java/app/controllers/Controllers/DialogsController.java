package app.controllers.Controllers;

import app.controllers.Dao.BlockDao;
import app.controllers.Dao.MessageDao;
import app.controllers.Models.BlackList;
import app.controllers.Models.SiteUser;
import app.controllers.Models.dto.SearchResult;
import app.controllers.Models.entity.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;
import java.util.stream.Collectors;

@Controller
public class DialogsController {

    @Autowired
    private Util util;

    @Autowired
    MessageDao messageDao;

    @Autowired
    BlockDao blockDao;

    @RequestMapping(value="/dialogs", method = { RequestMethod.POST, RequestMethod.GET})
    public ModelAndView showDialogs(ModelAndView modelAndView){

        SiteUser siteUser = util.getUser();

        List<Message> dialogs = new ArrayList<>();
        dialogs = messageDao.findAllByUser(siteUser.getId());
        HashSet<SiteUser> set = new HashSet<>();
        HashMap<Long, ArrayList<String>> mess = new HashMap<>();


List<BlackList> blackLists = blockDao.findForbidden(siteUser.getId());
        for (Message message: dialogs) {
            for (BlackList block : blackLists) {
                if (!message.getFromUser().getId().equals(block.getBlock())) {

                    if (message.getFromUser().getId() != siteUser.getId()) {
                        ArrayList<String> list = new ArrayList<>();
                        list.add(message.getFromUser().getFirstname() + " " + message.getFromUser().getSurname());
                        list.add(message.getDayMonth());
                        list.add(message.getText());
                        list.add(message.getRead().toString());
                        if (!mess.containsKey(message.getFromUser().getId())) {
                            mess.put(message.getFromUser().getId(), list);
                        } else mess.replace(message.getFromUser().getId(), list);

                    } else if (message.getToUser().getId() != siteUser.getId()) {
                        ArrayList<String> list = new ArrayList<>();
                        list.add(message.getToUser().getFirstname() + " " + message.getToUser().getSurname());
                        list.add(message.getDayMonth());
                        list.add(message.getText());
                        list.add(message.getRead().toString());
                        if (!mess.containsKey(message.getToUser().getId())) {

                            mess.put(message.getToUser().getId(), list);
                        } else mess.replace(message.getToUser().getId(), list);

                    }
//                    mess.put(message.getToUser().getId(), message.getToUser().getFirstname() + " " + message.getToUser().getSurname());
                }
            }
        }
        mess = mess.entrySet()  	// Set<Entry<String, String>>
                .stream()   			// Stream<Entry<String, String>>
                .sorted(Collections.reverseOrder(Map.Entry.comparingByKey()))
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        Map.Entry::getValue,
                        (oldValue, newValue) -> oldValue,
                        LinkedHashMap::new
                ));

        modelAndView.getModel().put("dialogs", mess);
        modelAndView.setViewName("app.dialogs");
        return modelAndView;
    }

}
