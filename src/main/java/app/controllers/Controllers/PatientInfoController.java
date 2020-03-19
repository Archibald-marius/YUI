package app.controllers.Controllers;

import app.controllers.Models.PatientInfo;
import app.controllers.Models.Patients;
import app.controllers.Models.SiteUser;
import app.controllers.Services.PateintInfoService;
import app.controllers.Services.PatientsService;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Component;

@Controller
@Component
public class PatientInfoController {


    @Autowired
    UserService userService;

    @Autowired
    PateintInfoService pateintInfoService;

    @Autowired
    PatientsService patientsService;

    private SiteUser getUser(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();

        return userService.get(email);
    }

    private ModelAndView showPatient(Patients patient) {
        ModelAndView modelAndView = new ModelAndView();
        if (patient == null) {
            modelAndView.setViewName("redirect:/");
            return modelAndView;
        }

        PatientInfo patientInfo = pateintInfoService.getPatientProfile(patient);

        if (patient == null) {
            patientInfo = new PatientInfo();
            patientInfo.setPatient(patient);
            pateintInfoService.save(patientInfo);
        }
        PatientInfo webProfile = new PatientInfo();
        webProfile.saveCopyFrom(patientInfo);

        modelAndView.getModel().put("patientId", patient.getId());
        modelAndView.getModel().put("profile", webProfile);
        modelAndView.setViewName("app.patientcard");

        return modelAndView;

    }


    @RequestMapping(value = "/patientcard/{id}")
    public ModelAndView showPatient(@PathVariable("id") Long id){
        Patients patient = patientsService.get(id);
        ModelAndView modelAndView = showPatient(patient);
        return modelAndView;
    }


}
