package app.controllers.Controllers;

import app.controllers.Dao.ControlDao;
import app.controllers.Models.Control;
import app.controllers.Models.Patients;
import app.controllers.Models.SiteUser;
import app.controllers.Services.PatientsService;
import app.controllers.Services.ProfileService;
import app.controllers.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class FromHomeController {

    @Autowired
    Util util;

    @Autowired
    PatientsService patientsService;

    @Autowired
    UserService userService;

    @Autowired
    ControlDao controlDao;

    @Autowired
    ProfileService profileService;

    @RequestMapping(value="/homemes/{id}", method=RequestMethod.GET)
    public ModelAndView fromHome(ModelAndView modelAndView, @PathVariable("id") Long id){
        Patients patient = patientsService.get(id);
        System.out.println("pat");
        System.out.println(patient.toString());
        System.out.println(id);
        System.out.println(id);

        System.out.println(patientsService.get(id).getMail());
        System.out.println(patientsService.get(id).getMail());

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

        Patients patients = patientsService.get(id);
        SiteUser siteUser = userService.get(patients.getMail());


        List<Control> control = controlDao.findByPatient(siteUser.getId());
        if (profileService.getUserProfile(siteUser).getTherapy()){
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

        if (profileService.getUserProfile(siteUser).getCardiology()){
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

        if (profileService.getUserProfile(siteUser).getAlergology()){
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

        if (profileService.getUserProfile(siteUser).getSurgery()){
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




        modelAndView.setViewName("app.homemes");
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
}
