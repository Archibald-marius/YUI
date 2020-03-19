package app.controllers.Services;

import app.controllers.Models.PatientInfo;
import app.controllers.Dao.PatientInfoDao;
import app.controllers.Models.Patients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PateintInfoService {

    @Autowired
    PatientInfoDao patientInfoDao;
    public void save(PatientInfo patientInfo) {patientInfoDao.save(patientInfo);}
    public PatientInfo getPatientProfile(Patients patient){
        return patientInfoDao.findByPatient(patient);
    }
}
