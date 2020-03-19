package app.controllers.Dao;

import app.controllers.Models.PatientInfo;
import app.controllers.Models.Patients;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PatientInfoDao extends CrudRepository<PatientInfo, Long> {
    PatientInfo findByPatient(Patients patient);

    List<Patients> findByPatientName(String text);
}
