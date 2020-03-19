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
import org.springframework.web.servlet.ModelAndView;
import javax.validation.Valid;

@Controller
public class ProfileController {

    @Autowired
    UserService userService;

    @Autowired
    ProfileService profileService;

    private SiteUser getUser(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();

        return userService.get(email);
    }

    private ModelAndView showProfile(SiteUser user){

        ModelAndView modelAndView = new ModelAndView();
        if(user == null){
            modelAndView.setViewName("redirect:/");
            return modelAndView;
        }

        Profile profile = profileService.getUserProfile(user);

        if(profile == null){
            profile = new Profile();
            profile.setUser(user);
            profileService.save(profile);
        }

        Profile webProfile = new Profile();
        webProfile.saveCopyFrom(profile);

        modelAndView.getModel().put("userId", user.getId());
        modelAndView.getModel().put("profile", webProfile);
        modelAndView.setViewName("app.profile");

        return modelAndView;

    }


    @RequestMapping(value = "/profile")
    public ModelAndView showProfile(){

        SiteUser user = getUser();
        ModelAndView modelAndView = showProfile(user);

        return modelAndView;
    }

    @RequestMapping(value = "/profile/{id}")
    public ModelAndView showProfile(@PathVariable("id") Long id){



        SiteUser user = userService.get(id);
        ModelAndView modelAndView = showProfile(user);

        return modelAndView;
    }


    @RequestMapping(value = "/edit-profile-about", method = RequestMethod.GET)
    public ModelAndView editProfileAbout(ModelAndView modelAndView){
        SiteUser user = getUser();
        Profile profile = profileService.getUserProfile(user);
        Profile webProfile = new Profile();
        webProfile.saveCopyFrom(profile);

        modelAndView.getModel().put("profile", webProfile);
        modelAndView.setViewName("app.editProfileAbout");
        return modelAndView;
    }
    @RequestMapping(value = "/edit-profile-about", method = RequestMethod.POST)
    public ModelAndView editProfileAbout(ModelAndView modelAndView, @Valid Profile webProfile, BindingResult result){
        modelAndView.setViewName("app.editProfileAbout");

        SiteUser user = getUser();
        Profile profile = profileService.getUserProfile(user);

        profile.safeMergeFrom(webProfile);

        if(!result.hasErrors()){
            profileService.save(profile);
            modelAndView.setViewName("redirect:/profile");
        }
        return modelAndView;
    }
}
