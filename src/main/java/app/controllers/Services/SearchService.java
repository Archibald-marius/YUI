package app.controllers.Services;

import app.controllers.Dao.PatientInfoDao;
import app.controllers.Models.Patients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchService {

    @Autowired
    private PatientInfoDao patientInfoDao;

    public List<Patients> search(String text){

        patientInfoDao.findByPatientName(text).stream().forEach(System.out::println);


        return null;
    }
}
