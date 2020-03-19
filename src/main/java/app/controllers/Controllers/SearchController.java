package app.controllers.Controllers;

import app.controllers.Services.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController {

    @Autowired
    SearchService searchService;

    @RequestMapping(value="/search", method = RequestMethod.POST)
    public ModelAndView search(ModelAndView modelAndView, @RequestParam("s") String text){


        searchService.search(text);
        modelAndView.setViewName("app.search");
        return modelAndView;
    }
}
