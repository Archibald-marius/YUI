package app.controllers.Controllers;

import app.controllers.Dao.MessageDao;
import app.controllers.Dao.ProfileDao;
import app.controllers.Models.Patients;
import app.controllers.Models.SiteUser;
import app.controllers.Models.entity.Message;
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
import java.util.stream.Collectors;

@Controller
public class MailController {

    @Autowired
    Util util;

    @Autowired
    UserService userService;

    @Autowired
    MessageDao messageDao;

    @Autowired
    ProfileService profileService;

    @RequestMapping(value="/mail/{id}", method= RequestMethod.GET)
    ModelAndView mail(ModelAndView modelAndView, @PathVariable("id") Long id) {

        SiteUser siteUser = userService.get(id);
        List<Message> dialogs = new ArrayList<>();
        SiteUser myUser = util.getUser();
        dialogs = messageDao.findAllByUser(myUser.getId());
        HashMap<Long, ArrayList<String>> mess = new HashMap<>();


        for (Message message : dialogs) {
            if (message.getFromUser().getId().equals(id) || message.getToUser().getId().equals(id)){
                ArrayList<String> list = new ArrayList<>();
                list.add(message.getDayMonth());
                list.add(message.getText());
                list.add(message.getRead().toString());
//                list.add(message.getFromUser().getFirstname() + message.getFromUser().getSurname());
                System.out.println(message.getFromUser().getId());
                if (message.getFromUser().getId().equals(myUser.getId()))
                    list.add("Вы");
                else
                if (profileService.getUserProfile(message.getFromUser()).getFirstname().equals("") && profileService.getUserProfile(message.getFromUser()).getSurname().equals(""))
                    list.add("Безимяный");
                else list.add(profileService.getUserProfile(message.getFromUser()).getFirstname() + " " + profileService.getUserProfile(message.getFromUser()).getSurname());
                System.out.println(profileService.getUserProfile(message.getFromUser()).getFirstname().equals(""));
                mess.put(message.getId(), list);
            }
//            if (message.getFromUser().getId() != siteUser.getId()) {
//                ArrayList<String> list = new ArrayList<>();
//                list.add(message.getDayMonth());
//                list.add(message.getText());
//                list.add(message.getRead().toString());
////                list.add(message.getFromUser().getFirstname() + message.getFromUser().getSurname());
//
//                if (profileService.getUserProfile(message.getFromUser()).getFirstname().equals("") && profileService.getUserProfile(message.getFromUser()).getSurname().equals(""))
//                    list.add("Безимяный");
//                else list.add(profileService.getUserProfile(message.getFromUser()).getFirstname() + profileService.getUserProfile(message.getFromUser()).getSurname());
//                System.out.println(profileService.getUserProfile(message.getFromUser()).getFirstname().equals(""));
//                mess.put(message.getId(), list);
//                }
//
//             else if (message.getToUser().getId() != siteUser.getId()) {
//                ArrayList<String> list = new ArrayList<>();
//                list.add(message.getDayMonth());
//                list.add(message.getText());
//                list.add(message.getRead().toString());
//                list.add(profileService.getUserProfile(message.getFromUser()).getFirstname() + profileService.getUserProfile(message.getFromUser()).getSurname());
//                mess.put(message.getId(), list);
//            }
        }
        mess = mess.entrySet()  	// Set<Entry<String, String>>
                .stream()   			// Stream<Entry<String, String>>
                .sorted(Collections.reverseOrder(Map.Entry.comparingByKey()))
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        Map.Entry::getValue,
                        (oldValue, newValue) -> oldValue,
                        LinkedHashMap::new
                ));

        modelAndView.setViewName("app.mail");
        modelAndView.getModel().put("dialogs", mess);
        return modelAndView;
    }
//    @RequestMapping(value="/editPatientCard/{id}", method=RequestMethod.POST)
//    ModelAndView editStatus(ModelAndView modelAndView, @Valid Patients patient, BindingResult result, @PathVariable("id") Long id) {
//
//
//        modelAndView.setViewName("app.editPatientCard");
//        PatientInfo patientInfo1 = pateintInfoService.getPatientProfile(patientsService.get(id));
//        Patients patients = patientsService.get(id);
//        patients.safeMergeFrom(patient);
//        if(!result.hasErrors()){
//            patientsService.save(patients);
//            modelAndView.setViewName("redirect:/patientcard/{id}");
//            modelAndView.setViewName("redirect:/patientcard/"+id);
//
//        }
//
//        return modelAndView;
//    }

}
