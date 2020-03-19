package app.controllers.Dao;

import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import org.springframework.data.repository.CrudRepository;

public interface ProfileDao extends CrudRepository<Profile, Long> {
    Profile findByUser(SiteUser user);
}
