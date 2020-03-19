package app.controllers.Dao;
import app.controllers.Models.SiteUser;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

@Repository
public interface UserDao extends CrudRepository<SiteUser, Long> {
    SiteUser findByEmail(String email);
}
