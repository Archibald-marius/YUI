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

        for (SiteUser users : doctors){
            ArrayList<String> arr = new ArrayList<>();
            switch (id){
                case "therapy":
                    if (profileService.getUserProfile(users).getTherapy() && profileService.getUserProfile(users).getPublished()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;
                case "gynecology":
                case "obstetrics":
                    System.out.println("true");
                    System.out.println("true");
                    if (users.getGynecology() || users.getOb()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                case "cardioligy":
                    if (users.getCardiology() && users.getPublished()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "gastro":
                    if (users.getGastro()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "neurology":
                    if (users.getNeurology()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "ophtalmology":
                    if (users.getOpht()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "otolaryngology":
                    if (users.getOtolor()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "surgery":
                    if (users.getSurgery()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "vascularsurgery":
                    if (users.getVascularsurgery()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "reprudoctology":
                    if (users.getReproductology()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "plasticsurgery":
                    if (users.getPlasticsurgery()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "pediatry":
                    if (users.getPediatrition()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;

                case "alergology":
                    if (users.getAlergology()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
                        oreo.put(users.getId(), arr);
                    }
                    break;
                case "orthopedy":
                    if (users.getOrthopedy()){
                        arr.add(users.getFirstname() + " " + users.getSurname());
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
        String mes = "Добрый день! Хотелось бы с Вами связатся по вопросу Вашего профиля. Оставляю мои контакты тут. Спасибо!";

        Boolean ag = true;
        List<Message> messages = new ArrayList<>();
        messages = messageDao.findAllByUser(user.getId());

        for (Message list : messages){
            if (list.getToUser().getId().equals(id) && list.getText().equals(mes))
                ag = false;
        }

        if (ag && messages.size() != 1) messageService.save(user, userService.get(id), mes);
        modelAndView.setViewName("app.getcontact");

        return modelAndView;
    }
}

