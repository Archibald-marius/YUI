package app.controllers.Controllers;

import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import app.controllers.Models.dto.SearchResult;
import app.controllers.Services.ProfileService;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class PublishController {

    @Autowired
    private Util util;

    @Autowired
    ProfileService profileService;

    @Autowired
    UserService userService;

    @RequestMapping(value="/publish", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView publish(ModelAndView modelAndView){

        SiteUser siteUser = util.getUser();
        Profile profile = profileService.getUserProfile(siteUser);
        System.out.println(profile.getFirstname() != null);
        System.out.println("here");
        if (!profile.getFirstname().equals("") && !profile.getSurname().equals("") && !profile.getCity().equals("")){

        if (siteUser.getPublished()) {
            siteUser.setPublished(false);
            profile.setPublished(false);

        }
        else {
            siteUser.setPublished(true);
            profile.setPublished(true);

        }
        profileService.save(profile);
//userService.save(siteUser);

        modelAndView.getModel().put("publish", siteUser.getPublished());
        modelAndView.setViewName("app.publish");}
        else {
            modelAndView.setViewName("redirect:/suggest");
        }
        return modelAndView;
    }
}
