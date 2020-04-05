package app.controllers.Models;

import org.springframework.lang.Nullable;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.Date;

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
    @NotBlank(message = "{register.patient.invalid}")
    private String name;

    @Nullable
    @Column(name="weeks")
    private Long weeks = null;

    @Nullable
    @Column(name="pregnancy")
    private Long pregnancy = null;

    @Nullable
    @Column(name="labour")
    private Long labour = null;

    @Nullable
    @Column(name="concomitant")
    private String concomitant = null;

    @Nullable
    @Column(name = "address")
    private String address = null;

    @Nullable
    @Column(name = "birsd")
    private Date birsd = null;

    @Nullable
    @Column(name = "work")
    private String work = null;

    @Nullable
    @Column(name = "notes")
    private String notes = null;

    @Nullable
    @Column(name="diagnosis")
    private String diagnosis = null;

    @Nullable
    @Column(name="mail")
    private String mail = null;

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Patients(String name, Long weeks, String diagnosis, Long pregnancy, Long labour, Date birsd, String work, String address, String notes, String concomitant, String mail) {
        this.name = name;
        this.weeks = weeks;
        this.diagnosis = diagnosis;
        this.pregnancy = pregnancy;
        this.labour = labour;
        this.birsd = birsd;
        this.work = work;
        this.address = address;
        this.notes = notes;
        this.concomitant = concomitant;
        this.mail=mail;
    }


    public Patients(){

    }


    public Long getPregnancy() {
        return pregnancy;
    }

    public void setPregnancy(Long pregnancy) {
        this.pregnancy = pregnancy;
    }

    public Long getLabour() {
        return labour;
    }

    public void setLabour(Long labour) {
        this.labour = labour;
    }

    public String getConcomitant() {
        return concomitant;
    }

    public void setConcomitant(String concomitant) {
        this.concomitant = concomitant;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirsd() {
        return birsd;
    }

    public void setBirsd(Date birsd) {
        this.birsd = birsd;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
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
    public void safeMergeFrom(Patients patients) {
        if (patients.name != null) {
            this.name = patients.name;
        }
        if (patients.weeks != null) {
            this.weeks = patients.weeks;
        }if (patients.address != null) {
            this.address = patients.address;
        }if (patients.work != null) {
            this.work = patients.work;
        }if (patients.diagnosis != null) {
            this.diagnosis = patients.diagnosis;
        }if (patients.concomitant != null) {
            this.concomitant = patients.concomitant;
        }
        if (patients.mail != null) {
            this.mail = patients.mail;
        }

    }
}
