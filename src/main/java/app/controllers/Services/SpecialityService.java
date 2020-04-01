package app.controllers.Services;

import app.controllers.Dao.SpecialityDao;
import app.controllers.Models.Speciality;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpecialityService {
    @Autowired
    private SpecialityDao specialityDao;

    public long count() {
        return specialityDao.count();
    }

    public Speciality get(String interestName) {
        return specialityDao.findOneByName(interestName);
    }

    public void save(Speciality interest) {
        specialityDao.save(interest);
    }

//    public Speciality createIfNotExists(String interestText) {
//        Speciality interest = specialityDao.findOneByName(interestText);
//
//        if(interest == null) {
//            interest = new Interest(interestText);
//            interestDao.save(interest);
//        }
//
//        return interest;
//    }
}
