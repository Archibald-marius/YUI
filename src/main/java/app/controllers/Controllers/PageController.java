package app.controllers.Controllers;

import app.controllers.Models.StatusUpdate;
import app.controllers.Services.StatusUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class PageController {

    @Autowired
    private StatusUpdateService statusUpdateService;

    @Value("${message.error.forbidden}")
    private String accessDeniedMessage;

    @Autowired
    Util util;

    @RequestMapping("/")
    ModelAndView home(ModelAndView modelAndView) {

//        StatusUpdate statusUpdate = statusUpdateService.getLatest();
int ticket = 0;
//        modelAndView.getModel().put("statusUpdate", statusUpdate);
        if (util.getUser() != null) {
            if (util.getUser().getRole().equals("ROLE_DOCTOR"))
                ticket = 1;
            if (util.getUser().getRole().equals("ROLE_PATIENT"))
                ticket = 2;
        }

        modelAndView.setViewName("app.homepage");
        modelAndView.getModel().put("ticket", ticket);



        return modelAndView;
    }

    @RequestMapping("/403")
    ModelAndView accessDenied(ModelAndView modelAndView) {

        modelAndView.getModel().put("message", accessDeniedMessage);
        modelAndView.setViewName("app.message");
        return modelAndView;
    }

    @RequestMapping("/about")
    String about() {
        return "app.about";
    }






}
