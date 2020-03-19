package app.controllers.Services;

import app.controllers.Models.Patients;
import app.controllers.Dao.PatientsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class PatientsService {
    @Autowired
    PatientsDao patientsDao;

    public void save(Patients patient) {patientsDao.save(patient);}

    public void register(Patients user) {

//        user.setRole("ROLE_USER");
        patientsDao.save(user);


    }
    public Patients getOrder(){
        return patientsDao.findFirstByOrderByName();
    }
    public List<Patients> getProp(String name){
        return patientsDao.findAllByDoctor(name);
    }
    public Patients get(Long id) {
        return patientsDao.findById(id).get();
    }


}
