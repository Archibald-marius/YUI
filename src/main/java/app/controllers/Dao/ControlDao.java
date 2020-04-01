package app.controllers.Dao;

import app.controllers.Models.Control;
import app.controllers.Models.Yavka;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ControlDao extends CrudRepository<Control, Long> {

    @Query("SELECT e FROM Control e WHERE e.patient IN (:patient)")
    List<Control> findByPatient(@Param("patient")Long patient);}