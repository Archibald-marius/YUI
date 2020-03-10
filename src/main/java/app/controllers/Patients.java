package app.controllers;

import javax.persistence.*;

@Entity
@Table(name = "patients")
public class Patients {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    private Long id;

//    @OneToOne(targetEntity = SiteUser.class)
//    @JoinColumn(name="user_id", nullable = false)
    @Column(name="doctor")
    private String doctor;

    @Column(name="name")
    private String name;

    @Column(name="weeks")
    private Long weeks;

    @Column(name="diagnosis")
    private String diagnosis;

    public Patients(String name, Long weeks, String diagnosis) {
        this.name = name;
        this.weeks = weeks;
        this.diagnosis = diagnosis;
    }

    public Patients(){

    }



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
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

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }
}
