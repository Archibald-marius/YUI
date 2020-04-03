package app.controllers.Controllers;

import app.controllers.Dao.UserDao;
import app.controllers.Dao.YavkaDao;
import app.controllers.Models.*;
import app.controllers.Services.PateintInfoService;
import app.controllers.Services.PatientsService;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Component;

import javax.validation.Valid;
import java.util.*;

@Controller
@Component
public class PatientInfoController {


    @Autowired
    UserService userService;

    @Autowired
    YavkaDao yavkaDao;

    @Autowired
    UserDao userDao;

    @Autowired
    Util util;

//    @Autowired
//    PateintInfoService pateintInfoService;

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

//        PatientInfo patientInfo;
//        patientInfo = pateintInfoService.getPatientProfile(patient);
//
//
//        if (patientInfo == null) {
//            patientInfo = new PatientInfo();
//            patientInfo.setPatient(patient);
//            pateintInfoService.save(patientInfo);
//
//        }
//        PatientInfo webProfile = new PatientInfo();
//        webProfile.saveCopyFrom(patientInfo);

        Map<Date,Integer> map = new HashMap<>();
        List<Yavka> yavka = yavkaDao.findAllByPatient(patient.getId());

        Map<Date, Long> mapping = new HashMap<>();
for (Yavka ares : yavka){
    if (ares.getSAT() != null && ares.getSAT() != 0) {
        mapping.put(ares.getAdded(), ares.getSAT().longValue());
        System.out.println(mapping.entrySet());
    }
}

        Boolean isShown = false;
        if(patient.getMail() != null)
            isShown = true;
        Long message = null;

        if (userDao.findByEmail(patient.getMail()) != null) {
            message = userDao.findByEmail(patient.getMail()).getId();
            modelAndView.addObject("message", message);
        }
        Boolean ob = false;
        if (util.getUser().getGynecology() == true)
            ob = true;


        modelAndView.addObject("gyn", ob);

        Boolean ap = false;
        Boolean bb = false;
        Boolean cir = false;
        for (Yavka cons : yavka){
            if (cons.getSAT() != null) {
                ap = true;

            }
            if (cons.getBaby_beat()!=null)
                bb = true;
            if (cons.getAb_circ() != null)
                cir = true;
        }


        modelAndView.addObject("ap", ap);
        modelAndView.addObject("bb", bb);
        modelAndView.addObject("cir", cir);



        modelAndView.addObject("ares", mapping);

        modelAndView.addObject("data", yavka);

        modelAndView.getModel().put("patient", patient);
//        modelAndView.getModel().put("patientName", patient.getName());
//        modelAndView.getModel().put("patientId", patient.getId());
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
    ModelAndView editStatus(ModelAndView modelAndView, @Valid Patients patient, BindingResult result, @PathVariable("id") Long id) {


        modelAndView.setViewName("app.editPatientCard");
//        PatientInfo patientInfo1 = pateintInfoService.getPatientProfile(patientsService.get(id));
        Patients patients = patientsService.get(id);
        patients.safeMergeFrom(patient);
        if(!result.hasErrors()){
            patientsService.save(patients);
            modelAndView.setViewName("redirect:/patientcard/{id}");
        }

        return modelAndView;
    }





}
