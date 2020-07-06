package app.controllers.Dao;

import app.controllers.Models.PatientInfo;
import app.controllers.Models.Patients;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PatientInfoDao extends CrudRepository<PatientInfo, Long> {
    PatientInfo findByPatient(Patients patient);

    @Query("SELECT e FROM Patients e WHERE e.name like %:name% AND e.doctor IN :doctor")
    List<Patients> findAllByName(@Param("name")String name, @Param("doctor")String doctor);}
