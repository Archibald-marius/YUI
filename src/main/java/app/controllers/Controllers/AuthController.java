package app.controllers.Controllers;

import app.controllers.Models.VerificationToken;
import app.controllers.Validation.EmailService;
import app.controllers.Services.UserService;
import app.controllers.Models.SiteUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    @Autowired
    private EmailService emailService;

    @Value("${message.registration.confirmed}")
    private String registrationConfirmedMessage;

    @Value("${message.invalid.user}")
    private String invalidUserMessage;

    @Value("${message.expired.token}")
    private String expiredTokenMessage;

    @RequestMapping("/login")
    String admin(Locale locale){
        System.out.println(locale.getDisplayLanguage());
        return "app.login";
    }

    @RequestMapping("/verifyemail")
    String verifyemail(){
        return "app.verifyemail";
    }

    @RequestMapping(value="/register/doctor", method = RequestMethod.GET)
    ModelAndView register(ModelAndView modelAndView){
        SiteUser user = new SiteUser();

        String role = "ROLE_DOCTOR";
        Boolean allowed = true;
//        if (id == 1) role = "ROLE_DOCTOR";
//        else role = "ROLE_USER";
        String[] countryCodes = Locale.getISOCountries();

        Map<String, String> mapCountries = new TreeMap<>();

        for (String countryCode : countryCodes) {
            Locale locale = new Locale("", countryCode);
            String code = locale.getCountry();
            String name = locale.getDisplayCountry();
            mapCountries.put(code, name);
        }
        modelAndView.addObject("mapCountries", mapCountries);
        modelAndView.addObject("role", role);
        modelAndView.addObject("allowed", allowed);
        modelAndView.getModel().put("user", user);
        modelAndView.setViewName("app.register");
        return modelAndView;
    }

    @RequestMapping(value="/register/doctor", method = RequestMethod.POST)
    ModelAndView register(ModelAndView modelAndView, @ModelAttribute(value = "user") @Valid SiteUser user, BindingResult result, HttpServletRequest request){

        modelAndView.setViewName("app.register");
        int local = 1;

        if(!result.hasErrors()){
//            user.setEnabled(true);
            userService.register(user);

            String token = userService.createEmailVerificationToken(user);

            if (request.getLocale().toString().equals("ru_RU"))
                local = 2;
            if (request.getLocale().toString().equals("uk_UA"))
                local = 3;
            emailService.sendVerificationEmail(user.getEmail(), token, 1, local);
            modelAndView.setViewName("redirect:/success");

//            userService.save(user);

        }


        return modelAndView;
    }


    @RequestMapping(value="/register/patient", method = RequestMethod.GET)
    ModelAndView registerPatient(ModelAndView modelAndView){
        SiteUser user = new SiteUser();

        String role = "ROLE_PATIENT";
//        if (id == 1) role = "ROLE_DOCTOR";
//        else role = "ROLE_USER";
        Boolean allowed = false;
        modelAndView.addObject("allowed", allowed);
        modelAndView.addObject("role", role);
        modelAndView.getModel().put("user", user);
        modelAndView.setViewName("app.register");
        return modelAndView;
    }

    @RequestMapping(value="/register/patient", method = RequestMethod.POST)
    ModelAndView registerPatient(ModelAndView modelAndView, @ModelAttribute(value = "user") @Valid SiteUser user, BindingResult result, HttpServletRequest request){

        modelAndView.setViewName("app.register");
        int local = 1;

        if(!result.hasErrors()){
//            user.setEnabled(true);
            userService.register(user);

            String token = userService.createEmailVerificationToken(user);
            if (request.getLocale().toString().equals("ru_RU"))
                local = 2;
            if (request.getLocale().toString().equals("uk_UA"))
                local = 3;
            emailService.sendVerificationEmail(user.getEmail(), token, 1, local);
            modelAndView.setViewName("redirect:/success");

//            userService.save(user);

        }


        return modelAndView;
    }
    @RequestMapping("/invaliduser")
    ModelAndView invalidUser(ModelAndView modelAndView) {

        modelAndView.getModel().put("message", invalidUserMessage);
        modelAndView.setViewName("app.message");
        return modelAndView;
    }

    @RequestMapping("/expiredtoken")
    ModelAndView expiredToken(ModelAndView modelAndView) {

        modelAndView.getModel().put("message", expiredTokenMessage);
        modelAndView.setViewName("app.message");
        return modelAndView;
    }
    @RequestMapping("/confirmregister")
    ModelAndView registrationConfirmed(ModelAndView modelAndView, @RequestParam("t") String tokenString) {

        VerificationToken token = userService.getVerificationToken(tokenString);

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

        userService.deleteToken(token);
        user.setEnabled(true);
        userService.save(user);

        modelAndView.getModel().put("message", registrationConfirmedMessage);
        modelAndView.setViewName("app.message");
        return modelAndView;
    }

    @RequestMapping(value="/success", method = RequestMethod.GET)
    ModelAndView success(ModelAndView modelAndView){

        modelAndView.setViewName("app.success");
        return modelAndView;
    }

    @RequestMapping(value = "/changepassword", method = {RequestMethod.GET, RequestMethod.POST})
    ModelAndView changePassword(ModelAndView modelAndView, @RequestParam("t") String tokenString) {

        VerificationToken token = userService.getVerificationToken(tokenString);

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
//        String password = "";
//        user.setPassword(password);
//        userService.save(user);


//        modelAndView.getModel().put("message", registrationConfirmedMessage);
        modelAndView.addObject("str", user.getEmail());
        modelAndView.addObject("bigdata", tokenString);
        modelAndView.setViewName("app.changepassword");
        return modelAndView;
    }

    @RequestMapping(value="/city", method = RequestMethod.GET)
    ModelAndView getCity(ModelAndView modelAndView){

        modelAndView.setViewName("app.city");
        return modelAndView;
    }

    //вопросик!!!!
    @RequestMapping(value="/city", method = RequestMethod.POST)
    ModelAndView setCity(ModelAndView modelAndView, @ModelAttribute(value = "user") @Valid SiteUser user, BindingResult result, HttpServletRequest request){

        modelAndView.setViewName("app.city");


        if(!result.hasErrors()){
            userService.register(user);

            String token = userService.createEmailVerificationToken(user);
            int local = 1;
            if (request.getLocale().toString().equals("ru_RU"))
                local = 2;
            if (request.getLocale().toString().equals("uk_UA"))
                local = 3;
            emailService.sendVerificationEmail(user.getEmail(), token, 1, local);
            modelAndView.setViewName("redirect:/success");

//            userService.save(user);

        }


        return modelAndView;
    }

}
