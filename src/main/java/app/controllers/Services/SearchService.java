package app.controllers.Services;

import app.controllers.Dao.PatientInfoDao;
import app.controllers.Models.Patients;
import app.controllers.Models.dto.SearchResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class SearchService {

    @Autowired
    private PatientInfoDao patientInfoDao;

    public List<SearchResult> search(String text){

        return patientInfoDao.findAllByName(text).stream().map(SearchResult::new).collect(Collectors.toList());

    }
}
