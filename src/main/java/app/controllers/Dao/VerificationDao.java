package app.controllers.Dao;

import app.controllers.Models.VerificationToken;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VerificationDao extends CrudRepository<VerificationToken, Long> {
    VerificationToken findByToken(String token);
}
