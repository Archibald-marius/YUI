package app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.data.domain.Page;


import java.util.Date;

@Controller

public class PageController {

    @Autowired
    private  StatusUpdateService statusUpdateService;

    @RequestMapping("/")
    ModelAndView home(ModelAndView modelAndView) {

        StatusUpdate statusUpdate = statusUpdateService.getLatest();

        modelAndView.getModel().put("statusUpdate", statusUpdate);

        modelAndView.setViewName("app.homepage");

        return modelAndView;
    }

    @RequestMapping("/about")
    String about() {
        return "app.about";
    }






}
