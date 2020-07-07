package app.controllers.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalendarController {
    @RequestMapping("calendar")
    ModelAndView getCalendar(ModelAndView modelAndView) {

        modelAndView.setViewName("app.calendar");
        return modelAndView;
    }
}
