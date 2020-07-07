package app.controllers.Controllers;

import app.controllers.Models.*;
import app.controllers.Services.GeoService;
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
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private GeoService geoService;

    @RequestMapping(value = "/admingeo", method = RequestMethod.GET)
    public ModelAndView editGeo(ModelAndView modelAndView) {

       List<Cities> cities = geoService.getCities();
        List<Countries> countries = geoService.getCountries();
        modelAndView.addObject("countries", countries);
       modelAndView.addObject("cities", cities);
        modelAndView.setViewName("app.admingeo");

        return modelAndView;
    }

    @RequestMapping(value = "/admingeo", method = RequestMethod.POST)
    public ModelAndView setGeo(ModelAndView modelAndView, @Valid Profile webProfile, BindingResult result) {

        modelAndView.setViewName("app.admingeo");


        return modelAndView;
    }
    @RequestMapping(value = "/addcountry", method = RequestMethod.GET)
    ModelAndView addCountry(ModelAndView modelAndView) {
Countries countries = new Countries();
        System.out.println(countries.getName());
        modelAndView.getModel().put("country", countries);
        modelAndView.setViewName("app.addcountry");
        return modelAndView;
    }

    @RequestMapping(value = "/addcountry", method = RequestMethod.POST)
    ModelAndView addCountry(ModelAndView modelAndView, @ModelAttribute(value = "country") @Valid Countries countries, BindingResult result){
        modelAndView.setViewName("app.addcountry");

        if(!result.hasErrors()) {
            geoService.saveCoutry(countries);
            modelAndView.setViewName("redirect:/admingeo");
        }

        return modelAndView;
    }

    @RequestMapping(value="/editcountry/{id}", method=RequestMethod.GET)
    ModelAndView editCountry(ModelAndView modelAndView, @PathVariable("id") Long id) {

        System.out.println("z nen");
        Countries countries = geoService.get(id);

            modelAndView.getModel().put("countries", countries);


        modelAndView.setViewName("app.editcountry");

        return modelAndView;
    }
    @RequestMapping(value="/editcountry/{id}", method=RequestMethod.POST)
    ModelAndView editCountry(ModelAndView modelAndView, @Valid Countries countries, BindingResult result, @PathVariable("id") Long id) {

Countries countries1 = new Countries();
        modelAndView.setViewName("app.editcountry");
        if(!result.hasErrors()){
             geoService.get(id).setName(countries.getName());
            geoService.saveCoutry(geoService.get(id));
            modelAndView.setViewName("redirect:/");

        }

        return modelAndView;
    }
    @RequestMapping(value = "/addcity", method = RequestMethod.GET)
    ModelAndView addCity(ModelAndView modelAndView) {
        Cities cities = new Cities();
        modelAndView.getModel().put("cities", cities);
        modelAndView.setViewName("app.addcity");
        return modelAndView;
    }

    @RequestMapping(value = "/addcity", method = RequestMethod.POST)
    ModelAndView addCity(ModelAndView modelAndView, @ModelAttribute(value = "city") @Valid Cities cities, BindingResult result){
        modelAndView.setViewName("app.addcity");

        if(!result.hasErrors()) {
            geoService.saveCity(cities);
            modelAndView.setViewName("redirect:/admingeo");
        }

        return modelAndView;
    }

    @RequestMapping(value="/editcity/{id}", method=RequestMethod.GET)
    ModelAndView editCity(ModelAndView modelAndView, @PathVariable("id") Long id) {

        Cities cities = geoService.getCity(id);

        modelAndView.getModel().put("cities", cities);


        modelAndView.setViewName("app.editcity");

        return modelAndView;
    }
    @RequestMapping(value="/editcity/{id}", method=RequestMethod.POST)
    ModelAndView editcity(ModelAndView modelAndView, @Valid Cities cities, BindingResult result, @PathVariable("id") Long id) {

Cities cities1 = new Cities();
modelAndView.setViewName("app.editcity");
        if(!result.hasErrors()){
            geoService.getCity(id).setName(cities.getName());
            geoService.getCity(id).setCountry(cities.getCountry());
            geoService.getCity(id).setValue(cities.getValue());
            geoService.getCity(id).setRu(cities.getRu());
            geoService.saveCity(geoService.getCity(id));
            modelAndView.setViewName("redirect:/");

        }

        return modelAndView;
    }
}
