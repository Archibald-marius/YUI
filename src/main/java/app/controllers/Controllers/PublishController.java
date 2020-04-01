package app.controllers.Controllers;

import app.controllers.Models.SiteUser;
import app.controllers.Models.dto.SearchResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class PublishController {

    @Autowired
    private Util util;

    @RequestMapping(value="/publish", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView publish(ModelAndView modelAndView){

        SiteUser siteUser = util.getUser();
        if (siteUser.getPublished())
            siteUser.setPublished(false);
        else siteUser.setPublished(true);
        modelAndView.getModel().put("publish", siteUser.getPublished());
        modelAndView.setViewName("app.publish");
        return modelAndView;
    }
}
