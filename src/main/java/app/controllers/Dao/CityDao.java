package app.controllers.Dao;

import app.controllers.Models.Cities;
import app.controllers.Models.Control;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CityDao extends CrudRepository<Cities, Long> {

    @Query("SELECT e FROM Cities e WHERE e.country = (:country)")
    List<Cities> findCitiesInCountry(@Param("country")Long patient);
}

