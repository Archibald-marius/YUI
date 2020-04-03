package app.controllers.Controllers;

import app.controllers.Dao.BlockDao;
import app.controllers.Models.BlackList;
import app.controllers.Models.Patients;
import app.controllers.Models.SiteUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlackListController {

    @Autowired
    Util util;

    @Autowired
    private BlockDao blockDao;

    @RequestMapping(value="/blacklist/{id}", method= RequestMethod.GET)
    ModelAndView editProf(ModelAndView modelAndView, @PathVariable("id") Long id) {

        SiteUser siteUser = util.getUser();

        BlackList blackList = new BlackList();
        blackList.setOwn(siteUser.getId());
        blackList.setBlock(id);
        blockDao.save(blackList);


        modelAndView.setViewName("app.blacklist");

        return modelAndView;
    }
}
