package app.controllers.Models;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@Entity
@Table(name = "control")
public class Control extends TimeZones{

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "patient")
    private Long patient = null;

    @Column(name = "SAT")
    private Long SAT = null;

    @Column(name = "DAT")
    private Long DAT = null;

    @Column(name = "pulse")
    private Long pulse = null;

    @Column(name = "temperature")
    private Double temperature = null;

    @Column(name = "glucose")
    private Double glucose = null;

    @Column(name = "baby")
    private Long baby = null;

    @Column(name="added")
    @DateTimeFormat(pattern = "yyyy/MM/dd hh:mm")
    private ZonedDateTime added = ZonedDateTime.now(ZoneId.of(msk));

    @Column(name = "normal_date")
    private String normal_date=added.format(DateTimeFormatter.ofPattern("dd/MM - HH:mm"));
//    @Column(name = "normal_date")
//    private String normal_date=new SimpleDateFormat("dd/MM HH:mm").format(new Date());

    public Control() {
    }

    public Control(Long patient, Long SAT, Long DAT, Long pulse, Double temperature, Double glucose, Long baby, String normal_date, ZonedDateTime added) {
        this.patient=patient;
        this.SAT=SAT;
        this.DAT=DAT;
        this.pulse=pulse;
        this.temperature=temperature;
        this.glucose=glucose;
        this.baby=baby;
        this.normal_date=normal_date;
        this.added=added;

    }

    public Long getId() {
        return id;
    }

    public String getNormal_date() {
        return normal_date;
    }

    public void setNormal_date(String normal_date) {
        this.normal_date = normal_date;
    }

    public Long getSAT() {
        return SAT;
    }

    public void setSAT(Long SAT) {
        this.SAT = SAT;
    }

    public Long getDAT() {
        return DAT;
    }

    public void setDAT(Long DAT) {
        this.DAT = DAT;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPatient() {
        return patient;
    }

    public void setPatient(Long patient) {
        this.patient = patient;
    }


    public Long getPulse() {
        return pulse;
    }

    public void setPulse(Long pulse) {
        this.pulse = pulse;
    }

    public Double getTemperature() {
        return temperature;
    }

    public void setTemperature(Double temperature) {
        this.temperature = temperature;
    }

    public Double getGlucose() {
        return glucose;
    }

    public void setGlucose(Double glucose) {
        this.glucose = glucose;
    }

    public Long getBaby() {
        return baby;
    }

    public void setBaby(Long baby) {
        this.baby = baby;
    }

    public ZonedDateTime getAdded() {
        return added;
    }

    public void setAdded(ZonedDateTime added) {
        this.added = added;
    }
}



