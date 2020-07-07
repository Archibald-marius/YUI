package app.controllers.Services;

import app.controllers.Dao.CityDao;
import app.controllers.Dao.CountryDao;
import app.controllers.Models.Cities;
import app.controllers.Models.Countries;
import app.controllers.Models.Patients;
import app.controllers.Models.Profile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GeoService {

    @Autowired
    private CountryDao countryDao;

    @Autowired
    private CityDao cityDao;

    public void saveCity(Cities cities){
        cityDao.save(cities);
    }

    public void saveCoutry(Countries countries){
        countryDao.save(countries);
    }

    public List<Cities> getCities(){
        List<Cities> cities = new ArrayList<>();
        cities = (List<Cities>) cityDao.findAll();
        return cities;
    }

    public List<Countries> getCountries(){
        List<Countries> countries = new ArrayList<>();
        countries = (List<Countries>) countryDao.findAll();
        return countries;
    }

    public Countries get(Long id) {
        return countryDao.findById(id).get();
    }

    public Cities getCity(Long id) {
        return cityDao.findById(id).get();
    }



}
