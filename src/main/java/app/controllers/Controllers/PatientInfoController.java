package app.controllers.Controllers;

import app.controllers.Models.PatientInfo;
import app.controllers.Models.Patients;
import app.controllers.Models.SiteUser;
import app.controllers.Models.StatusUpdate;
import app.controllers.Services.PateintInfoService;
import app.controllers.Services.PatientsService;
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
import org.springframework.stereotype.Component;

import javax.validation.Valid;
import java.util.Optional;

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

        PatientInfo patientInfo;
        patientInfo = pateintInfoService.getPatientProfile(patient);


        if (patientInfo == null) {
            patientInfo = new PatientInfo();
            patientInfo.setPatient(patient);
            pateintInfoService.save(patientInfo);

        }
        PatientInfo webProfile = new PatientInfo();
        webProfile.saveCopyFrom(patientInfo);


        modelAndView.getModel().put("patient", patient);
        modelAndView.getModel().put("patientName", patient.getName());
        modelAndView.getModel().put("patientId", patient.getId());
        modelAndView.setViewName("app.patientcard");

        return modelAndView;

    }

//    @RequestMapping(value = "/patientcard")
//    public ModelAndView showPatient(){
//        Patients patient = new Patients();
//        ModelAndView modelAndView = showPatient(patient);
//        return modelAndView;
//    }

    @RequestMapping(value = "/patientcard/{id}")
    public ModelAndView showPatientProfile(@PathVariable("id") Long id){
        Patients patient = patientsService.get(id);

        ModelAndView modelAndView = showPatient(patient);

        return modelAndView;
    }

//    @RequestMapping(value = "/editPatientCard/{id}")
//    public ModelAndView showPatientEdit(@PathVariable("id") Long id){
//    Patients patients = patientsService.get(id);
//
//
//
//    ModelAndView modelAndView = showPatient(patients);
//        patientsService.save(patients);
//        modelAndView.getModel().put("patients", patients);
//        modelAndView.setViewName("app.editPatientCard");
//
//        return modelAndView;
//
//}
    @RequestMapping(value="/editPatientCard/{id}", method=RequestMethod.GET)
    ModelAndView editProf(ModelAndView modelAndView, @PathVariable("id") Long id) {

        Patients patients = patientsService.get(id);

        modelAndView.getModel().put("patients", patients);

        modelAndView.setViewName("app.editPatientCard");

        return modelAndView;
    }
    @RequestMapping(value="/editPatientCard/{id}", method=RequestMethod.POST)
    ModelAndView editStatus(ModelAndView modelAndView, @Valid PatientInfo patientInfo, BindingResult result, @PathVariable("id") Long id) {


        modelAndView.setViewName("app.editPatientCard");
        PatientInfo patientInfo1 = pateintInfoService.getPatientProfile(patientsService.get(id));
        patientInfo1.safeMergeFrom(patientInfo);
        if(!result.hasErrors()){
            pateintInfoService.save(patientInfo1);
            modelAndView.setViewName("redirect:/");
        }

        return modelAndView;
    }





}
