package app.controllers.Controllers;

import app.controllers.Models.Patients;
import app.controllers.Models.SiteUser;
import app.controllers.Services.UserService;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ParamsController {

    @Autowired
    private Util util;

    @Autowired
    UserService userService;

    @RequestMapping(value="/params", method = RequestMethod.GET)
    ModelAndView setParams(ModelAndView modelAndView){

        List<Boolean> list = new ArrayList<>();
        SiteUser siteUser = util.getUser();
        if(siteUser.getTherapy()) list.add(true); else list.add(false);
        if(siteUser.getCardiology()) list.add(true); else list.add(false);
        if(siteUser.getSurgery()) list.add(true); else list.add(false);
        if(siteUser.getAlergology()) list.add(true); else list.add(false);
        if(siteUser.getOb()) list.add(true); else list.add(false);

        for (int i = 0; i < 5; i++)
            System.out.println(list.get(i));
        modelAndView.setViewName("app.params");
        modelAndView.getModel().put("set", list);

        return modelAndView;
    }

    @RequestMapping(value="/ind/{id}", method=RequestMethod.GET)
    ModelAndView aboutParam(ModelAndView modelAndView, @PathVariable("id") String id) {


        SiteUser siteUser = util.getUser();
        if (id.equals("pressure"))
            siteUser.setTherapy(true);

        if (id.equals("pulse"))
            siteUser.setCardiology(true);

        if (id.equals("temperature"))
            siteUser.setSurgery(true);

        if (id.equals("baby"))
            siteUser.setOb(true);

        if (id.equals("glucose"))
            siteUser.setAlergology(true);


        userService.save(siteUser);
        modelAndView.setViewName("app.ind");

        return modelAndView;
    }
}
