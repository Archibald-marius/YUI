package app.controllers.Controllers;

import app.controllers.Models.Patients;
import app.controllers.Models.SiteUser;
import app.controllers.Models.VerificationToken;
import app.controllers.Models.dto.SearchResult;
import app.controllers.Services.UserService;
import app.controllers.Validation.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import java.util.Date;
import java.util.List;

@Controller
public class PasswordReset extends HttpServlet {

    @Autowired
    private UserService userService;

    @Autowired
    private EmailService emailService;

    @RequestMapping(value="/forgotpassword", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView reset(ModelAndView modelAndView){

        modelAndView.setViewName("app.forgotpassword");
        return modelAndView;
    }

    @RequestMapping(value="/reset", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView reset(ModelAndView modelAndView, @RequestParam("email") String text, HttpServletRequest request){
        String token = userService.createEmailVerificationToken(userService.get(text));

        int local = 1;
        if (request.getLocale().toString().equals("ru_RU"))
            local = 2;
        if (request.getLocale().toString().equals("uk_UA"))
            local = 3;
        emailService.sendVerificationEmail(userService.get(text).getEmail(), token, 2, local);
        modelAndView.setViewName("app.reset");
        return modelAndView;
    }

    @RequestMapping(value="/newpass", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView newPass(ModelAndView modelAndView, @RequestParam("str") String bigText,
                                @RequestParam("password") String text,
                                @RequestParam("bigdata") String bigdata){


        VerificationToken token = userService.getVerificationToken(bigdata);

        if(token == null) {
            modelAndView.setViewName("redirect:/invaliduser");
            userService.deleteToken(token);
            return modelAndView;
        }

        Date expiryDate = token.getExpiry();

        if(expiryDate.before(new Date())) {
            modelAndView.setViewName("redirect:/expiredtoken");
            userService.deleteToken(token);
            return modelAndView;
        }

        SiteUser user = token.getUser();

        if(user == null) {
            modelAndView.setViewName("redirect:/invaliduser");
            userService.deleteToken(token);
            return modelAndView;
        }
        user.setPassword(new BCryptPasswordEncoder().encode(text));
        userService.save(user);
        modelAndView.setViewName("app.newpass");
        return modelAndView;
    }

}
