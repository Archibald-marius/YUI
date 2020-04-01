package app.controllers.Controllers;

import app.controllers.Dao.YavkaDao;
import app.controllers.Models.Patients;
import app.controllers.Models.StatusUpdate;
import app.controllers.Models.Yavka;
import app.controllers.Services.PatientsService;
import app.controllers.Services.YavkaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class YavkaController {
    @Autowired
    YavkaService yavkaService;

    @Autowired
    PatientsService patientsService;

    @Autowired
    YavkaDao yavkaDao;


    @RequestMapping(value = "/yavka/{id}", method = RequestMethod.GET)
    ModelAndView registerYavka(ModelAndView modelAndView, @PathVariable("id") Long id) {

        Yavka yavka = new Yavka();
        modelAndView.addObject("patient", id);
        modelAndView.addObject("time" , new Date().getTime());
        modelAndView.getModel().put("yavka", yavka);
        modelAndView.setViewName("app.yavka");
        return modelAndView;
    }

    @RequestMapping(value = "/yavka/{id}", method = RequestMethod.POST)
    ModelAndView registerVisit(ModelAndView modelAndView, @Valid Yavka yavka, BindingResult result, @PathVariable("id") Long id){


        modelAndView.setViewName("app.yavka");

        if(!result.hasErrors()) {
            yavkaService.register(yavka);


            modelAndView.setViewName("/");
        }

        return modelAndView;
    }
    @RequestMapping(value = "/showVisites/{id}", method = RequestMethod.GET)
    ModelAndView showVisites(ModelAndView modelAndView, @PathVariable("id") Long id) {

        List<Yavka> yavka = yavkaDao.findAllByPatient(id);

        modelAndView.getModel().put("yavka", yavka);
        modelAndView.setViewName("app.showVisites");
        return modelAndView;
    }


    @RequestMapping(value="/editvisit/{id}", method=RequestMethod.GET)
    ModelAndView editProf(ModelAndView modelAndView, @PathVariable("id") Long id) {

        Yavka yavka = yavkaService.getYavka(id);

        modelAndView.getModel().put("yavka", yavka);

        modelAndView.setViewName("app.editvisit");

        return modelAndView;
    }
    @RequestMapping(value="/editvisit/{id}", method=RequestMethod.POST)
    ModelAndView editStatus(ModelAndView modelAndView, @Valid Yavka yavka, BindingResult result, @PathVariable("id") Long id) {


        modelAndView.setViewName("app.editvist");
//        PatientInfo patientInfo1 = pateintInfoService.getPatientProfile(patientsService.get(id));
Yavka yavka1 = yavkaService.getYavka(id);
yavka1.safeMergeFrom(yavka);
        if(!result.hasErrors()){
            yavkaService.register(yavka1);
            modelAndView.setViewName("redirect:/");
        }

        return modelAndView;
    }
}
