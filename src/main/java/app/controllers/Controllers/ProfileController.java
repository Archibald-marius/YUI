package app.controllers.Controllers;

import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import app.controllers.Services.ProfileService;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import sun.awt.UNIXToolkit;

import javax.validation.Valid;

@Controller
public class ProfileController {

    @Autowired
    UserService userService;

    @Autowired
    ProfileService profileService;

    @Autowired
    Util util;

    private SiteUser getUser(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();

        return userService.get(email);
    }


    //----------------------------
    private ModelAndView showProfile(SiteUser user) {

        ModelAndView modelAndView = new ModelAndView();

        if(user == null) {
            modelAndView.setViewName("redirect:/");
            return modelAndView;
        }

        Profile profile = profileService.getUserProfile(user);




        if (profile == null) {
            profile = new Profile();
            profile.setUser(user);
            profileService.save(profile);
        }
        profile.setRole(user.getRole());


        Profile webProfile = new Profile();
        webProfile.safeCopyFrom(profile);


int bach = 0;
Boolean ex = true;
if (profile.getRole().equals("ROLE_DOCTOR")) {
    bach = 1;
//if (profile.getFirstname().trim().equals("") && profile.getSurname() != null && profile.getCity() != null)
//    ex = true;
}
if (profile.getRole().equals("ROLE_PATIENT"))
    bach = 2;

        modelAndView.getModel().put("bach", bach);
        modelAndView.getModel().put("ex", ex);
        modelAndView.getModel().put("userId", user.getId());
        modelAndView.getModel().put("profile", webProfile);
        modelAndView.setViewName("app.profile");

        return modelAndView;
    }
    @RequestMapping(value = "/edit-profile-about", method = RequestMethod.GET)
    public ModelAndView editProfileAbout(ModelAndView modelAndView) {

        SiteUser user = getUser();
        Profile profile = profileService.getUserProfile(user);


        Profile webProfile = new Profile();
        webProfile.safeCopyFrom(profile);
        Boolean allowed = false;
        Boolean zenex = false;

        if (util.getUser().getRole().equals("ROLE_DOCTOR"))
            allowed = true;

        if (util.getUser().getRole().equals("ROLE_PATIENT"))
            zenex = true;

        modelAndView.getModel().put("profile", webProfile);
        modelAndView.getModel().put("allowed", allowed);
        modelAndView.getModel().put("zenex", zenex);
        modelAndView.setViewName("app.editProfileAbout");

        return modelAndView;
    }

    @RequestMapping(value = "/edit-profile-about", method = RequestMethod.POST)
    public ModelAndView editProfileAbout(ModelAndView modelAndView, @Valid Profile webProfile, BindingResult result) {

        modelAndView.setViewName("app.editProfileAbout");

        SiteUser user = getUser();
        Profile profile = profileService.getUserProfile(user);

        profile.safeMergeFrom(webProfile);

        if (!result.hasErrors()) {
            profileService.save(profile);
            modelAndView.setViewName("redirect:/profile");
        }
//        user.safeMergeFrom(webProfile);

        return modelAndView;
    }
    @RequestMapping(value = "/profile")
    public ModelAndView showProfile() {
        SiteUser user = getUser();

        ModelAndView modelAndView = showProfile(user);

        modelAndView.getModel().put("ownProfile", true);

        return modelAndView;
    }
    @RequestMapping(value = "/suggest")
    public ModelAndView suggest() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("app.suggest");

        return modelAndView;
    }

}
