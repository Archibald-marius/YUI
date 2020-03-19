package app.controllers.Controllers;

import app.controllers.Validation.EmailService;
import app.controllers.Services.UserService;
import app.controllers.Models.SiteUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    @Autowired
    private EmailService emailService;

    @RequestMapping("/login")
    String admin(){
        return "app.login";
    }

    @RequestMapping(value="/register", method = RequestMethod.GET)
    ModelAndView register(ModelAndView modelAndView){
        SiteUser user = new SiteUser();

        modelAndView.getModel().put("user", user);
        modelAndView.setViewName("app.register");
        return modelAndView;
    }

    @RequestMapping(value="/register", method = RequestMethod.POST)
    ModelAndView register(ModelAndView modelAndView, @ModelAttribute(value = "user") @Valid SiteUser user, BindingResult result){

        modelAndView.setViewName("app.register");


        if(!result.hasErrors()){
            userService.register(user);

//            emailService.sendVerificationEmail(user.getEmail());
            modelAndView.setViewName("redirect:/");

            user.setEnabled(true);
            userService.save(user);

        }


        return modelAndView;
    }
}
