package app.controllers.Controllers;

import app.controllers.Dao.ControlDao;
import app.controllers.Models.Control;
import app.controllers.Models.StatusUpdate;
import app.controllers.Services.StatusUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.naming.ldap.HasControls;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @RequestMapping("/")
    ModelAndView home(ModelAndView modelAndView) {

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


//        modelAndView.getModel().put("statusUpdate", statusUpdate);
        if (util.getUser() != null) {
            if (util.getUser().getRole().equals("ROLE_DOCTOR"))
                ticket = 1;
            if (util.getUser().getRole().equals("ROLE_PATIENT")) {
                ticket = 2;
                List<Control> control = controlDao.findByPatient(util.getUser().getId());
                if (util.getUser().getTherapy()){
                    int i = 0;
                    for (Control data : control){
                        if(i<25)
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

                if (util.getUser().getCardiology()){
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

                if (util.getUser().getAlergology()){
                    int k = 0;
                    for (Control data : control){
                        if(k<25)
                            if (data.getGlucose() != null && data.getGlucose() != 0){
                                glu.put(data.getNormal_date(), data.getGlucose());
                                k++;
                                showGluc=true;
                            }
                    }
                }

                if (util.getUser().getSurgery()){
                    int n = 0;
                    for (Control data : control){
                        if(n<25)
                            if (data.getTemperature() != null && data.getTemperature() != 0){
                                tmp.put(data.getNormal_date(), data.getTemperature());
                                n++;
                                showTemper=true;
                            }
                    }
                }

            }
        }

        modelAndView.setViewName("app.homepage");
        modelAndView.getModel().put("ticket", ticket);
        modelAndView.getModel().put("ares", pressure);
        modelAndView.getModel().put("pls", pls);
        modelAndView.getModel().put("glu", glu);
        modelAndView.getModel().put("tmp", tmp);



        modelAndView.getModel().put("showPress", showPress);
        modelAndView.getModel().put("showPls", showPls);
        modelAndView.getModel().put("showGluc", showGluc);
        modelAndView.getModel().put("showTemper", showTemper);








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
