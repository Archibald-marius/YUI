package app.controllers.Dao;

import app.controllers.Models.Patients;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.query.Param;

import java.util.List;

@Repository
public interface PatientsDao extends CrudRepository<Patients, Long> {
    Patients findFirstByOrderByName();

//    List<Patients> findAllByDoctor(String name);
    @Query("SELECT e FROM Patients e WHERE e.doctor IN (:doctor)")
    List<Patients> findAllByDoctor(@Param("doctor")String doctor);

    @Query("SELECT e FROM Patients e")
    List<Patients> findAll();


}
