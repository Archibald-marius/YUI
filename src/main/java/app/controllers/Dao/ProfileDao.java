package app.controllers.Dao;

import app.controllers.Models.Patients;
import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProfileDao extends CrudRepository<Profile, Long> {
    Profile findByUser(SiteUser user);

    @Query("SELECT e FROM Profile e WHERE e.role IN (:role)")
    List<Profile> findAllByRole(@Param("role")String role);}

