//package app.controllers.Controllers;
//
//import app.controllers.Models.*;
//import app.controllers.Services.PateintInfoService;
//import app.controllers.Services.PatientsService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//@Controller
//public class EditPatientCardController {
//
//    @Autowired
//    PateintInfoService pateintInfoService;
//
//    @Autowired
//    PatientsService patientsService;
//
//    private ModelAndView showPatient(Patients patient) {
//
//        ModelAndView modelAndView = new ModelAndView();
//        if (patient == null) {
//            modelAndView.setViewName("redirect:/");
//            return modelAndView;
//        }
//
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
//
//
//        modelAndView.getModel().put("patient", patient);
//        modelAndView.getModel().put("patientName", patient.getName());
//        modelAndView.getModel().put("patientId", patient.getId());
//        modelAndView.setViewName("app.patientcard");
//
//        return modelAndView;
//
//    }
//
//@RequestMapping(value = "/editPatientCard/{id}")
//public ModelAndView showPatientEdit(@PathVariable("id") Long id){
//    Patients patients = patientsService.get(id);
//
//    System.out.println(patients.getName());
//    System.out.println(patients.getName());
//
//    System.out.println(patients.getName());
//
//    System.out.println(patients.getName());
//
//    System.out.println(patients.getName());
//
//    System.out.println(patients.getName());
//
//
//    ModelAndView modelAndView = showPatient(patients);
//    return modelAndView;
//
//}
//    @RequestMapping(value = "/editPatientCard", method = RequestMethod.GET)
//    public ModelAndView editPatient(ModelAndView modelAndView, @RequestParam(name="id") Long id){
//
//        Patients patients = patientsService.get(id);
//        PatientInfo patientInfo;
//        patientInfo = pateintInfoService.getPatientProfile(patients);
//        PatientInfo webProfile = new PatientInfo();
//        webProfile.saveCopyFrom(patientInfo);
//
//        modelAndView.getModel().put("patients", webProfile);
//        modelAndView.setViewName("app.editPatientCard");
//
//        return modelAndView;
//
//    }
//}
