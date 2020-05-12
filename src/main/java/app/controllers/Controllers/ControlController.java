package app.controllers.Controllers;

import app.controllers.Models.Control;
import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import app.controllers.Models.Yavka;
import app.controllers.Services.ControlService;
import app.controllers.Services.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Date;

@Controller
public class ControlController {

    @Autowired
    ControlService controlService;

    @Autowired
    Util util;

    @Autowired
    ProfileService profileService;

    @RequestMapping(value = "/control", method = RequestMethod.GET)
    ModelAndView registerControl(ModelAndView modelAndView) {

        SiteUser siteUser = util.getUser();
        Profile profile = profileService.getUserProfile(siteUser);

        if (profile == null) {
            profile = new Profile();
            profile.setUser(siteUser);
            profile.setTherapy(true);
            profile.setCardiology(true);
            profile.setSurgery(true);
            profile.setAlergology(true);
            profileService.save(profile);

        }
//        profile.setRole(siteUser.getRole());
//
//
//        Profile webProfile = new Profile();
//        webProfile.safeCopyFrom(profile);

        Control control = new Control();
        Boolean ap = false;
        Boolean pls = false;
        Boolean tmp = false;
        Boolean glu = false;
//        if (siteUser.getTherapy()) ap = true;
        if (profile.getTherapy()) ap = true;

//        if (siteUser.getCardiology()) pls = true;
        if (profile.getCardiology()) pls = true;


//        if(siteUser.getSurgery()) tmp = true;
        if(profile.getSurgery()) tmp = true;


//        if(siteUser.getAlergology()) glu = true;
        if(profile.getAlergology()) glu = true;

        modelAndView.addObject("time" , new Date());
        modelAndView.addObject("id", siteUser.getId());
        modelAndView.getModel().put("control", control);
        modelAndView.getModel().put("ap", ap);
        modelAndView.getModel().put("pls", pls);
        modelAndView.getModel().put("tmp", tmp);
        modelAndView.getModel().put("glu", glu);

        modelAndView.setViewName("app.control");
        return modelAndView;
    }

    @RequestMapping(value = "/control", method = RequestMethod.POST)
    ModelAndView registerVisit(ModelAndView modelAndView, @Valid Control control, BindingResult result){


        modelAndView.setViewName("app.control");
        control.setPatient(util.getUser().getId());

        if(!result.hasErrors()) {
            controlService.register(control);

            modelAndView.setViewName("redirect:/");

//            modelAndView.setViewName("/");
        }

        return modelAndView;
    }

}
