package app.controllers.Dao;

import app.controllers.Models.Speciality;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SpecialityDao extends CrudRepository<Speciality, Long> {
    Speciality findOneByName(String name);
}
