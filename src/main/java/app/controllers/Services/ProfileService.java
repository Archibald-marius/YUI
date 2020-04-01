package app.controllers.Services;

import app.controllers.Models.Patients;
import app.controllers.Models.Profile;
import app.controllers.Dao.ProfileDao;
import app.controllers.Models.SiteUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProfileService {

    @Autowired
    ProfileDao profileDao;
    public void save(Profile profile){
        profileDao.save(profile);
    }

    public Profile getUserProfile(SiteUser user){
        return profileDao.findByUser(user);
    }

    public List<Profile> getByRole(String role){
        return profileDao.findAllByRole(role);
    }

}
