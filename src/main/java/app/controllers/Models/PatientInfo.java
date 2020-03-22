package app.controllers.Models;

import javax.persistence.*;

@Entity
@Table(name="patientinfo")
public class PatientInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="patient_id")
    private Long id;

    @OneToOne(targetEntity = Patients.class)
    @JoinColumn(name = "id", nullable = false)
    private Patients patient;

    @Column(name="name", length = 5000)
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Patients getPatient() {
        return patient;
    }

    public void setPatient(Patients patient) {
        this.patient = patient;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void saveCopyFrom(PatientInfo patient){
        if(patient.name != null){
            this.name = patient.name;
        }
    }

    public void safeMergeFrom(PatientInfo webProfile) {
        if(webProfile.name !=null){
            this.name=webProfile.name;
        }
    }
}
