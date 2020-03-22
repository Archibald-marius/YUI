package app.controllers.Controllers;

import app.controllers.Models.SiteUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChooseController {

    @RequestMapping(value="/choose", method = RequestMethod.GET)
    ModelAndView register(ModelAndView modelAndView){

        modelAndView.setViewName("app.choose");
        return modelAndView;
    }
}
