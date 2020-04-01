package app.controllers.Controllers;

import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import app.controllers.Models.Yavka;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class SpecialityController {

    @Autowired
    private Util util;

    @Autowired
    private UserService userService;

    @RequestMapping(value="/speciality", method=RequestMethod.GET)
    ModelAndView editProf(ModelAndView modelAndView) {

        SiteUser siteUser = util.getUser();

        modelAndView.getModel().put("us", siteUser);

        modelAndView.setViewName("app.speciality");

        return modelAndView;
    }
//    @RequestMapping(value="/speciality", method=RequestMethod.POST)
//    ModelAndView editStatus(ModelAndView modelAndView, @Valid SiteUser siteUser, BindingResult result) {
//
//
//        modelAndView.setViewName("app.speciality");
////        PatientInfo patientInfo1 = pateintInfoService.getPatientProfile(patientsService.get(id));
//        SiteUser siteUser1 = util.getUser();
//        siteUser1.safeMergeFrom(siteUser);
//        if(!result.hasErrors()){
//            userService.save(siteUser1);
//            modelAndView.setViewName("redirect:/");
//        }
//
//        return modelAndView;
//    }
}
