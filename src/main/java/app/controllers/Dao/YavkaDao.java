package app.controllers.Dao;

import app.controllers.Models.Patients;
import app.controllers.Models.Yavka;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface YavkaDao extends CrudRepository<Yavka, Long> {

    @Query("SELECT e FROM Yavka e WHERE e.patient IN (:patient)")
    List<Yavka> findAllByPatient(@Param("patient")Long patient);}


