package app.controllers.Services;

import app.controllers.Dao.YavkaDao;
import app.controllers.Models.PatientInfo;
import app.controllers.Models.Patients;
import app.controllers.Models.Yavka;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class YavkaService {

    @Autowired
    YavkaDao yavkaDao;

    public void register(Yavka yavka) {

        yavkaDao.save(yavka);
    }
    public Yavka getYavka(Long id){
        return yavkaDao.findById(id).get();
    }


}
