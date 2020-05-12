package app.controllers.Controllers;

import app.controllers.Dao.MessageDao;
import app.controllers.Models.Patients;
import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import app.controllers.Models.entity.Message;
import app.controllers.Services.MessageService;
import app.controllers.Services.ProfileService;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.*;

@Controller
public class FindDoctorController {

    @Autowired
    UserService userService;

    @Autowired
    Util util;

    @Autowired
    MessageService messageService;

    @Autowired
    MessageDao messageDao;

    @Autowired
    ProfileService profileService;


    @RequestMapping(value="/searchdoctor", method = RequestMethod.GET)
    ModelAndView findDoctor(ModelAndView modelAndView){

        modelAndView.setViewName("app.searchdoctor");
        return modelAndView;
    }

    @RequestMapping(value="/docs/{id}", method=RequestMethod.GET)
    ModelAndView editProf(ModelAndView modelAndView, @PathVariable("id") String id) {

        List<SiteUser> doctors = new ArrayList<>();

        doctors = userService.getByRole("ROLE_DOCTOR");

        Map<Long, List<String>> oreo = new HashMap<>();

        System.out.println(doctors.size()>0);
        if (doctors.size()>0)
        for (SiteUser users : doctors){
            System.out.println(profileService.getUserProfile(users).getId());
            System.out.println(profileService.getUserProfile(users).getCardiology());
            System.out.println(profileService.getUserProfile(users).getPublished());
            ArrayList<String> arr = new ArrayList<>();
            switch (id){
                case "therapy":
                    if (profileService.getUserProfile(users).getTherapy() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;
                case "gynecology":
                case "obstetrics":
                    if ((profileService.getUserProfile(users).getGynecology() || profileService.getUserProfile(users).getOb()) && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                case "cardiology":
                    if (profileService.getUserProfile(users).getCardiology() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "gastro":
                    if (profileService.getUserProfile(users).getGastro() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "neurology":
                    if (profileService.getUserProfile(users).getNeurology() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "ophtalmology":
                    if (profileService.getUserProfile(users).getOpht() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "otolaryngology":
                    if (profileService.getUserProfile(users).getOtolor() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "surgery":
                    if (profileService.getUserProfile(users).getSurgery() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "vascularsurgery":
                    if (profileService.getUserProfile(users).getVascularsurgery() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "reprudoctology":
                    if (profileService.getUserProfile(users).getReproductology() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "plasticsurgery":
                    if (profileService.getUserProfile(users).getPlasticsurgery() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "pediatry":
                    if (profileService.getUserProfile(users).getPediatrition() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "alergology":
                    if (profileService.getUserProfile(users).getAlergology() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;
                case "orthopedy":
                    if (profileService.getUserProfile(users).getOrthopedy() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                case "endocrinology":
                    if (profileService.getUserProfile(users).getEndocrinology() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                case "urology":
                    if (profileService.getUserProfile(users).getUrology() != null)
                    if (profileService.getUserProfile(users).getUrology() && profileService.getUserProfile(users).getPublished()){
                        arr.add(profileService.getUserProfile(users).getFirstname() + " " + profileService.getUserProfile(users).getSurname());
                        arr.add(profileService.getUserProfile(users).getCity());
                        arr.add(profileService.getUserProfile(users).getHospital());
                        oreo.put(users.getId(), arr);
                    }
                    break;
                default:break;
            }

        }

        modelAndView.getModel().put("doctors", oreo);

        modelAndView.setViewName("app.docs");

        return modelAndView;
    }
//    @RequestMapping(value="/editPatientCard/{id}", method=RequestMethod.POST)
//    ModelAndView editStatus(ModelAndView modelAndView, @Valid Patients patient, BindingResult result, @PathVariable("id") String id) {
//
//
//        modelAndView.setViewName("app.editPatientCard");
////        PatientInfo patientInfo1 = pateintInfoService.getPatientProfile(patientsService.get(id));
//        Patients patients = patientsService.get(id);
//        patients.safeMergeFrom(patient);
//        if(!result.hasErrors()){
//            patientsService.save(patients);
//            modelAndView.setViewName("redirect:/patientcard/{id}");
//        }
//
//        return modelAndView;
//    }

    @RequestMapping(value="/getcontact/{id}", method=RequestMethod.GET)
    ModelAndView editProf(ModelAndView modelAndView, @PathVariable("id") Long id) {

        SiteUser user = util.getUser();
        String mes = "Добрый день! Хочу связатся по вопросу Вашего профиля. Спасибо!";

        Boolean ag = true;
        List<Message> messages = new ArrayList<>();
        messages = messageDao.findAllByUser(user.getId());

        for (Message list : messages){
            if (list.getToUser().getId().equals(id) && list.getText().equals(mes))
                ag = false;
        }
        Profile profile = profileService.getUserProfile(user);
        if (!profile.getFirstname().equals("") && !profile.getSurname().equals("") && !profile.getCity().equals("")) {
            if (ag && messages.size() != 1) messageService.save(user, userService.get(id), mes);
            modelAndView.setViewName("app.getcontact");
        }
        else {
            modelAndView.setViewName("redirect:/info");
        }


        return modelAndView;
    }
    @RequestMapping(value = "/info")
    public ModelAndView info() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("app.info");

        return modelAndView;
    }
}

