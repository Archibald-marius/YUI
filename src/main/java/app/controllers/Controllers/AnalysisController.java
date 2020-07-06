package app.controllers.Controllers;


import app.controllers.Models.dto.Analysis;
import app.controllers.Services.AnalysisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.time.temporal.UnsupportedTemporalTypeException;

@Controller
public class AnalysisController {

    @Autowired
    private AnalysisService analysisService;

    @Autowired
    private Util util;

    @RequestMapping(value="/analysis", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView setAnalysis(ModelAndView modelAndView){


//        Boolean b_blood = false;
//        String g_blood  = "1";
//        Boolean ur = false;
//
//        modelAndView.addObject("g_blood", g_blood);
//        modelAndView.addObject("b_blood", b_blood);
//        modelAndView.addObject("ur", ur);

        modelAndView.setViewName("app.analysis");
        return modelAndView;
    }

    @RequestMapping(value="/check", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView checkResult(ModelAndView modelAndView, @RequestParam("g_blood") Long g_blood,
                                    @RequestParam("b_blood") Long b_blood,
                                    @RequestParam("ur") Long ur
                                ){

        modelAndView.setViewName("app.check");
        modelAndView.addObject("g_blood", g_blood);
        return modelAndView;
    }
    @RequestMapping(value="/conclusion", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView conclusion(ModelAndView modelAndView,
                                    @RequestParam("erythr") Double erythr,
                                    @RequestParam("leu") Double leu,
                                    @RequestParam("tromb") Double tromb,
                                    @RequestParam("reticulocytes") Double reticulocytes,
                                   @RequestParam("reticulocytes") Double soe


    ){
        System.out.println(erythr);
        System.out.println(leu);
        System.out.println(tromb);
        Analysis analysis = new Analysis(erythr, leu, tromb, reticulocytes, soe);
        analysisService.proceedBlood(analysis, util.getUser().getGender());
        modelAndView.addObject("analysis", analysis);
        modelAndView.setViewName("app.conclusion");
        return modelAndView;
    }
}
