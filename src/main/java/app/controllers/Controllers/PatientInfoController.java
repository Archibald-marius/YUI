package app.controllers.Controllers;

import app.controllers.Dao.ProfileDao;
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
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.*;
import java.util.stream.Collectors;

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
        List<Yavka> new_list = new ArrayList<>();
//        if (yavka.size() > 3) {
//            new_list = yavka.subList(yavka.size() - 3, yavka.size() - 1);
//        }
//        else
            new_list = yavka;
//            Collections.reverse(new_list);

        Boolean ap = false;
        Boolean pls = false;
        Boolean tmp = false;
        Boolean glu = false;

        Map<String, ArrayList> mapping = new HashMap<>();
        Map<String, Long> pulse = new HashMap<>();
        Map<String, ArrayList> temperature = new HashMap<>();
        Map<String, ArrayList> glucose = new HashMap<>();

        int i = 0;
        int n = 0;

for (Yavka ares : new_list) {
    if (i < 30)
        if (ares.getSAT() != null && ares.getSAT() != 0 && ares.getDAT() != null && ares.getDAT() != 0) {
            ArrayList arr = new ArrayList<>();
            arr.add(ares.getSAT().longValue());
            arr.add(ares.getDAT().longValue());
            mapping.put(ares.getNormal_date(), arr);
            ap = true;
            i++;
        }
}
        for (Yavka ares : new_list){
    if (n<30)
        if (ares.getPulse() != null && ares.getPulse() != 0) {
//            ArrayList arr = new ArrayList<>();
//            arr.add(ares.getPulse().longValue());
//            arr.add(ares.getNormal_date());
            pulse.put(ares.getNormal_date(), ares.getPulse());
            pls = true;
            n++;
        }


}

        Boolean ob = false;
Map bpp_baby = new HashMap<>();
int j = 0;
for (Yavka ares : new_list){
    if (j<30)
        if (ares.getBaby_beat() != null && ares.getBaby_beat() != 0) {
            bpp_baby.put(ares.getNormal_date(), ares.getBaby_beat().longValue());
            ob = true;
            j++;
        }
}
        Map mass = new HashMap<>();
        int k = 0;
        for (Yavka ares : new_list){
            if (k<30)
                if (ares.getMass() != null && ares.getMass() != 0d) {
                    mass.put(ares.getNormal_date(), ares.getMass());
                    ob = true;
                    k++;
                }
        }



        mapping = mapping.entrySet()  	// Set<Entry<String, String>>
                .stream()   			// Stream<Entry<String, String>>
                .sorted(Collections.reverseOrder(Map.Entry.comparingByKey()))
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        Map.Entry::getValue,
                        (oldValue, newValue) -> oldValue,
                        LinkedHashMap::new
                ));

        pulse = pulse.entrySet()  	// Set<Entry<String, String>>
                .stream()   			// Stream<Entry<String, String>>
                .sorted(Collections.reverseOrder(Map.Entry.comparingByKey()))
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        Map.Entry::getValue,
                        (oldValue, newValue) -> oldValue,
                        LinkedHashMap::new
                ));

        Boolean isShown = false;
        if(patient.getMail() != null)
            isShown = true;
        Long message = null;
        Long pos = null;

        if (userDao.findByEmail(patient.getMail()) != null) {
            message = userDao.findByEmail(patient.getMail()).getId();
        }
        modelAndView.addObject("message", message);

        if (userDao.findByEmail(patient.getMail()) != null && userDao.findByEmail(patient.getMail()).getRole().equals("ROLE_PATIENT")) {
            pos = userDao.findByEmail(patient.getMail()).getId();
        }
        System.out.println(pos);
        modelAndView.addObject("pos", pos);



        modelAndView.addObject("gyn", ob);

        Boolean bb = false;
        Boolean cir = false;
//        for (Yavka cons : yavka){
//            if (cons.getSAT() != null) {
//                ap = true;
//
//            }
//            if (cons.getBaby_beat()!=null)
//                bb = true;
//            if (cons.getAb_circ() != null)
//                cir = true;
//        }


        modelAndView.addObject("ap", ap);
        modelAndView.addObject("bb", bb);
        modelAndView.addObject("cir", cir);
        modelAndView.addObject("pls", pls);



        modelAndView.addObject("ares", mapping);
        modelAndView.addObject("bpp", bpp_baby);
        modelAndView.addObject("mass", mass);
        modelAndView.addObject("pulse", pulse);




        modelAndView.addObject("data", yavka);

        if (util.getUser().getEmail().equals(patient.getDoctor()))
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
        ModelAndView modelAndView = new ModelAndView();
if (patient.getDoctor().equals(util.getUser().getEmail()))
        modelAndView = showPatient(patient);


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

        if (patients.getDoctor().equals(util.getUser().getEmail()))
        modelAndView.getModel().put("patients", patients);
        else modelAndView.getModel().put("patients", new Patients());


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
//            modelAndView.setViewName("redirect:/patientcard/{id}");
            modelAndView.setViewName("redirect:/patientcard/"+id);

        }

        return modelAndView;
    }





}
