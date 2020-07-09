package app.controllers.Controllers;

import app.controllers.Dao.ControlDao;
import app.controllers.Models.Control;
import app.controllers.Models.Profile;
import app.controllers.Models.StatusUpdate;
import app.controllers.Services.ProfileService;
import app.controllers.Services.StatusUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.naming.ldap.HasControls;
import javax.servlet.http.HttpServletRequest;
import java.util.*;
import java.util.stream.Collectors;

@Controller

public class PageController {

    @Autowired
    private StatusUpdateService statusUpdateService;

    @Value("${message.error.forbidden}")
    private String accessDeniedMessage;

    @Autowired
    Util util;

    @Autowired
    private ControlDao controlDao;

    @Autowired
    ProfileService profileService;

    @RequestMapping("/")
    ModelAndView home(ModelAndView modelAndView, HttpServletRequest request) {

        System.out.println(request.getLocale());
        System.out.println(request.getLocale().toString().equals("en_GB"));
//        StatusUpdate statusUpdate = statusUpdateService.getLatest();
int ticket = 0;
Boolean showPress = false;
Boolean showPls = false;
Boolean showTemper=false;
Boolean showGluc=false;
Boolean showBaby=false;
        Map<String, ArrayList> pressure = new HashMap<>();
        Map<String, Long> pls = new HashMap<>();
        Map<String, Double> glu = new HashMap<>();
        Map<String, Double> tmp = new HashMap<>();


        Profile profile = profileService.getUserProfile(util.getUser());




        if (profile == null) {
            profile = new Profile();
            profile.setUser(util.getUser());
            if (util.getUser() != null)
            if (util.getUser().getRole().equals("ROLE_PATIENT")) {
                profile.setTherapy(true);
                profile.setCardiology(true);
                profile.setSurgery(true);
            }
            if (util.getUser() != null)
            profileService.save(profile);
        }

//        modelAndView.getModel().put("statusUpdate", statusUpdate);
        if (util.getUser() != null) {
            if (util.getUser().getRole().equals("ROLE_DOCTOR"))
                ticket = 1;
            if (util.getUser().getRole().equals("ROLE_PATIENT")) {
                ticket = 2;
                List<Control> control_old = controlDao.findByPatient(util.getUser().getId());
                List<Control> control = new ArrayList<>();
//                if (control_old.size() > 30)
//                    control = control_old.subList(control_old.size()-30, control_old.size()-1);
//                else
                    control = control_old;
                if (profileService.getUserProfile(util.getUser()).getTherapy()){
                    int i = 0;
                    for (Control data : control){
                        if(i<30)
                        if (data.getSAT() != null && data.getSAT() != 0 && data.getDAT() != null && data.getDAT() != 0){
                            ArrayList list = new ArrayList();
                            list.add(data.getSAT());
                            list.add(data.getDAT());
                            pressure.put(data.getNormal_date(), list);
                            i++;
                            showPress = true;
                        }
                    }
                }

                if (profileService.getUserProfile(util.getUser()).getCardiology()){
                    int j = 0;
                    for (Control data : control){
                        if(j<25)
                            if (data.getPulse() != null && data.getPulse() != 0){
                                pls.put(data.getNormal_date(), data.getPulse());
                                j++;
                                showPls=true;
                            }
                    }
                }

                if (profileService.getUserProfile(util.getUser()).getAlergology()){
                    int k = 0;
                    for (Control data : control){
                        if(k<30)
                            if (data.getGlucose() != null && data.getGlucose() != 0){
                                glu.put(data.getNormal_date(), data.getGlucose());
                                k++;
                                showGluc=true;
                            }
                    }
                }

                if (profileService.getUserProfile(util.getUser()).getSurgery()){
                    int n = 0;
                    for (Control data : control){
                        if(n<30)
                            if (data.getTemperature() != null && data.getTemperature() != 0){
                                tmp.put(data.getNormal_date(), data.getTemperature());
                                n++;
                                showTemper=true;
                            }
                    }
                }

            }
        }
pressure = pressure.entrySet()  	// Set<Entry<String, String>>
        .stream()   			// Stream<Entry<String, String>>
        .sorted(Collections.reverseOrder(Map.Entry.comparingByKey()))
        .collect(Collectors.toMap(
                Map.Entry::getKey,
                Map.Entry::getValue,
                (oldValue, newValue) -> oldValue,
                LinkedHashMap::new
        ));

        pls = pls.entrySet()  	// Set<Entry<String, String>>
                .stream()   			// Stream<Entry<String, String>>
                .sorted(Collections.reverseOrder(Map.Entry.comparingByKey()))
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        Map.Entry::getValue,
                        (oldValue, newValue) -> oldValue,
                        LinkedHashMap::new
                ));

        tmp = tmp.entrySet()  	// Set<Entry<String, String>>
                .stream()   			// Stream<Entry<String, String>>
                .sorted(Collections.reverseOrder(Map.Entry.comparingByKey()))
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        Map.Entry::getValue,
                        (oldValue, newValue) -> oldValue,
                        LinkedHashMap::new
                ));

        glu = glu.entrySet()  	// Set<Entry<String, String>>
                .stream()   			// Stream<Entry<String, String>>
                .sorted(Collections.reverseOrder(Map.Entry.comparingByKey()))
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        Map.Entry::getValue,
                        (oldValue, newValue) -> oldValue,
                        LinkedHashMap::new
                ));
        modelAndView.setViewName("app.homepage");
        modelAndView.getModel().put("ticket", ticket);
        modelAndView.getModel().put("ares", pressure);
        modelAndView.getModel().put("pls", pls);
        modelAndView.getModel().put("glu", glu);
        modelAndView.getModel().put("tmp", tmp);

        Boolean ask_param = false;
        if (pressure.isEmpty() && pls.isEmpty() && glu.isEmpty() && tmp.isEmpty())
        ask_param = true;
        System.out.println(pls.isEmpty());
        System.out.println(pls.toString());
        System.out.println(pressure.size());
        System.out.println(ask_param);



        modelAndView.getModel().put("showPress", showPress);
        modelAndView.getModel().put("showPls", showPls);
        modelAndView.getModel().put("showGluc", showGluc);
        modelAndView.getModel().put("showTemper", showTemper);
        modelAndView.getModel().put("ask_param", ask_param);









        return modelAndView;
    }

    @RequestMapping("/403")
    ModelAndView accessDenied(ModelAndView modelAndView) {

        modelAndView.getModel().put("message", accessDeniedMessage);
        modelAndView.setViewName("app.message");
        return modelAndView;
    }

    @RequestMapping("/about")
    String about() {
        return "app.about";
    }






}
