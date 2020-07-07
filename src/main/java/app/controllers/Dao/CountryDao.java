package app.controllers.Dao;

import app.controllers.Models.Control;
import app.controllers.Models.Countries;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryDao  extends CrudRepository<Countries, Long> {
}
