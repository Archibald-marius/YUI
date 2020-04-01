package app.controllers.Models;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name = "control")
public class Control{

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
    private Long temperature = null;

    @Column(name = "glucose")
    private Long glucose = null;

    @Column(name = "baby")
    private Long baby = null;

    @Column(name = "normal_date")
    private String normal_date=new SimpleDateFormat("dd/MM").format(new Date());

    public Control() {
    }

    public Control(Long patient, Long SAT, Long DAT, Long pulse, Long temperature, Long glucose, Long baby, String normal_date) {
        this.patient=patient;
        this.SAT=SAT;
        this.DAT=DAT;
        this.pulse=pulse;
        this.temperature=temperature;
        this.glucose=glucose;
        this.baby=baby;
        this.normal_date=normal_date;
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

    public Long getTemperature() {
        return temperature;
    }

    public void setTemperature(Long temperature) {
        this.temperature = temperature;
    }

    public Long getGlucose() {
        return glucose;
    }

    public void setGlucose(Long glucose) {
        this.glucose = glucose;
    }

    public Long getBaby() {
        return baby;
    }

    public void setBaby(Long baby) {
        this.baby = baby;
    }
}



