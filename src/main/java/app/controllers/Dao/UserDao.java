package app.controllers.Dao;
import app.controllers.Models.Patients;
import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

@Repository
public interface UserDao extends CrudRepository<SiteUser, Long> {
    SiteUser findByEmail(String email);

    @Query("SELECT e FROM SiteUser e WHERE e.role IN (:role)")
    List<SiteUser> findAllByRole(@Param("role")String role);}

