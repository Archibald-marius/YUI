package app.controllers.Models.dto;

import app.controllers.Models.Patients;

public class SearchResult {
    private Long userId;
    private String name;
    private Long weeks;
    private String doctor;


    public SearchResult(Patients patient) {
       userId = patient.getId();
       name = patient.getName();
       weeks = patient.getWeeks();
       doctor = patient.getDoctor();
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getWeeks() {
        return weeks;
    }

    public void setWeeks(Long weeks) {
        this.weeks = weeks;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    @Override
    public String toString() {
        return "SearchResult{" +
                "userId=" + userId +
                ", name='" + name + '\'' +
                ", weeks=" + weeks +
                '}';
    }
}
