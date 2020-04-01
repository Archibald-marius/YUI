package app.controllers.Services;

import app.controllers.Dao.ControlDao;
import app.controllers.Models.Control;
import app.controllers.Models.Yavka;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ControlService {
    @Autowired
    ControlDao controlDao;

    public void register(Control control) {

        controlDao.save(control);
    }
}
