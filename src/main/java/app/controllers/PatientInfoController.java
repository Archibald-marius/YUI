package app.controllers;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PatientInfoController {

    @Autowired
    SiteUser siteUser;

    @Autowired
    UserService userService;

    @Autowired
    PatientsService patientsService;

    private SiteUser getUser(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();

        return userService.get(email);
    }

    private ModelAndView showPatient(Patients patient){
        ModelAndView modelAndView = new ModelAndView();
        if(patient == null) {
            modelAndView.setViewName("redirect:/");
            return modelAndView;
        }
        patientsService.getPatientProfile(patient);

    }

    @RequestMapping(value = "/patientcard/{id}")
    public ModelAndView showPatient(@PathVariable("id") Long id){
        Patients patient = patientsService.get(id);
        ModelAndView modelAndView = showPatient(patient);
        return modelAndView;
    }
}
