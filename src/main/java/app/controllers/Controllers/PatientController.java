package app.controllers.Controllers;

import app.controllers.Models.Patients;
import app.controllers.Dao.PatientsDao;
import app.controllers.Models.Profile;
import app.controllers.Services.PatientsService;
import app.controllers.Services.ProfileService;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.validation.Valid;
import java.util.List;

@Controller
public class PatientController {

    @Autowired
    PatientsService patientsService;

    @Autowired
    UserService userService;

    @Autowired
    PatientsDao patientsDao;

    @Autowired
    Util util;

    @Autowired
    ProfileService profileService;

    @RequestMapping(value = "/addpatient", method = RequestMethod.GET)
    ModelAndView addUser(ModelAndView modelAndView) {
        Patients patient = new Patients();

//        SiteUser siteUser = (SiteUser)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        Long id = siteUser.getId();

        String doctor;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
             doctor = ((UserDetails)principal).getUsername();
        } else {
             doctor = principal.toString();
        }

        Boolean zax = false;

        Profile profile = profileService.getUserProfile(util.getUser());

        if (profile == null)
            zax = util.getUser().getOb();
        else zax = profile.getOb();


            modelAndView.addObject("zax", zax);

        modelAndView.addObject("doctor", doctor);

        modelAndView.getModel().put("patient", patient);
        modelAndView.setViewName("app.addpatient");
        return modelAndView;
    }

    @RequestMapping(value = "/addpatient", method = RequestMethod.POST)
    ModelAndView addUser(ModelAndView modelAndView, @ModelAttribute(value = "patient") @Valid Patients patient, BindingResult result){
        modelAndView.setViewName("app.addpatient");

        if(!result.hasErrors()) {
            patientsService.register(patient);

            modelAndView.setViewName("redirect:/patients");
//            modelAndView.setViewName("/");
            patientsService.save(patient);
        }

        return modelAndView;
    }

    @RequestMapping(value = "/patients", method = RequestMethod.GET)
    ModelAndView showPatients(ModelAndView modelAndView){
        Patients patients = patientsService.getOrder();
        modelAndView.getModel().put("patients", patients);
        String doctor;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            doctor = ((UserDetails)principal).getUsername();
        } else {
            doctor = principal.toString();
        }
        List<Patients> patientsList = patientsService.getProp(doctor);
        modelAndView.getModel().put("patientList", patientsList);
        modelAndView.setViewName("app.patients");
        return modelAndView;
    }


}
