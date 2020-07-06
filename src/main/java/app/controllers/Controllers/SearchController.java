package app.controllers.Controllers;

import app.controllers.Models.dto.SearchResult;
import app.controllers.Services.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class SearchController {

    @Autowired
    private SearchService searchService;

    @Autowired
    private Util util;

    @RequestMapping(value="/search", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView search(ModelAndView modelAndView, @RequestParam("s") String text){


        List<SearchResult> result =  searchService.search(text, util.getUser().getEmail());
        modelAndView.getModel().put("result", result);
        modelAndView.setViewName("app.search");
        return modelAndView;
    }
}
