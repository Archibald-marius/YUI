package app.controllers.Models;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.Objects;
import java.util.TimeZone;

@Entity
@Table(name = "yavka")
public class Yavka extends TimeZones {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "patient")
    private Long patient = null;

    @Column(name="added")
    @DateTimeFormat(pattern = "yyyy/MM/dd hh:mm")
    private ZonedDateTime added = ZonedDateTime.now(ZoneId.of(msk));

//    private Date added = new Date();



    @Column(name = "normal_date")
    private String normal_date=added.format(DateTimeFormatter.ofPattern("dd/MM - HH:mm"));

//    private String normal_date=new SimpleDateFormat("dd.MM.yyyy HH:mm").format(Calendar.getInstance(TimeZone.getTimeZone("Asia/Shanghai")).getTime());
//    private String normal_date=new SimpleDateFormat("dd/MM hh:mm").format(new Date());

    public String getNormal_date() {

        return normal_date;
    }

    public void setNormal_date(String normal_date) {
        this.normal_date = normal_date;
    }

    @Column(name = "pulse")
    private Long pulse=null;

    @Column(name = "baby_beat")
    private Long baby_beat=null;

    @Column(name = "mass")
    private Double mass=null;

    @Column(name = "temperaturw")
    private Double temperature=null;

    @Column(name = "ab_circ")
    private Long ab_circ=null;

    @Column(name = "ab_hig")
    private Long ab_hig=null;

    @Column(name="next")
    private String next = null;

    public Yavka(Long patient, ZonedDateTime added, Long pulse, Long baby_beat, Double mass, Long ab_circ, Long ab_hig, Long DAT, Long SAT, String complains, Boolean swell, String head_acke, String normal_date, Double temperature, String analysis, String prescriptions, String diagnosis, String objective, String instrument) {
        this.patient = patient;
        this.added=added;
        this.pulse=pulse;
        this.baby_beat=baby_beat;
        this.mass=mass;
        this.ab_circ=ab_circ;
        this.ab_hig=ab_hig;
        this.DAT=DAT;
        this.SAT=SAT;
        this.complains=complains;
        this.swell=swell;
        this.head_acke=head_acke;
        this.normal_date=normal_date;
        this.temperature=temperature;
        this.Analysis =Analysis;
        this.prescriptions=prescriptions;
        this.diagnosis=diagnosis;
        this.Objective=Objective;
        this.instrument=instrument;

    }
    public  Yavka(){
    }

    @Column(name = "SAT")
    private Long SAT;

    @Column(name = "DAT")
    private Long DAT;

    @Column(name = "Objective")
    private String Objective;

    @Column(name = "Analysis")
    private String Analysis;

    @Column(name = "Prescriptions")
    private String prescriptions;

    @Column(name = "Instrument")
    private String instrument;

    @Column(name = "Diagnosis")
    private String diagnosis;

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
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

    @Column(name = "complains")
    private String complains;

    @Column(name = "swell")
    private  Boolean swell;

    @Column(name = "head_acke")
    private String head_acke;

    public Long getId() {
        return id;
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

    public ZonedDateTime getAdded() {
        return added;
    }

    public void setAdded(ZonedDateTime added) {
        this.added = added;
    }

    public Long getPulse() {
        return pulse;
    }

    public void setPulse(Long pulse) {
        this.pulse = pulse;
    }

    public Long getBaby_beat() {
        return baby_beat;
    }

    public void setBaby_beat(Long baby_beat) {
        this.baby_beat = baby_beat;
    }

    public Double getMass() {
        return mass;
    }

    public void setMass(Double mass) {
        this.mass = mass;
    }

    public Long getAb_circ() {
        return ab_circ;
    }

    public void setAb_circ(Long ab_circ) {
        this.ab_circ = ab_circ;
    }

    public Long getAb_hig() {
        return ab_hig;
    }

    public void setAb_hig(Long ab_hig) {
        this.ab_hig = ab_hig;
    }


    public String getComplains() {
        return complains;
    }

    public void setComplains(String complains) {
        this.complains = complains;
    }

    public Boolean getSwell() {
        return swell;
    }

    public void setSwell(Boolean swell) {
        this.swell = swell;
    }

    public String getHead_acke() {
        return head_acke;
    }

    public void setHead_acke(String head_acke) {
        this.head_acke = head_acke;
    }

    public Double getTemperature() {
        return temperature;
    }

    public void setTemperature(Double temperature) {
        this.temperature = temperature;
    }

    public String getObjective() {
        return Objective;
    }

    public void setObjective(String objective) {
        Objective = objective;
    }

    public String getAnalysis() {
        return Analysis;
    }

    public void setAnalysis(String analysis) {
        Analysis = analysis;
    }

    public String getPrescriptions() {
        return prescriptions;
    }

    public void setPrescriptions(String prescriptions) {
        this.prescriptions = prescriptions;
    }

    public String getInstrument() {
        return instrument;
    }

    public void setInstrument(String instrument) {
        this.instrument = instrument;
    }

    public String getNext() {
        return next;
    }

    public void setNext(String next) {
        this.next = next;
    }

    @Override
    public String toString() {
        return "Yavka{" +
                "id=" + id +
                ", patient=" + patient +
                ", added=" + added +
                ", pulse=" + pulse +
                ", baby_beat=" + baby_beat +
                ", mass=" + mass +
                ", ab_circ=" + ab_circ +
                ", ab_hig=" + ab_hig +
                ", press=" + SAT +
                ", complains='" + complains + '\'' +
                ", swell=" + swell +
                ", head_acke='" + head_acke + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Yavka yavka = (Yavka) o;
        return Objects.equals(id, yavka.id) &&
                Objects.equals(patient, yavka.patient) &&
                Objects.equals(added, yavka.added) &&
                Objects.equals(pulse, yavka.pulse) &&
                Objects.equals(baby_beat, yavka.baby_beat) &&
                Objects.equals(mass, yavka.mass) &&
                Objects.equals(ab_circ, yavka.ab_circ) &&
                Objects.equals(ab_hig, yavka.ab_hig) &&
                Objects.equals(SAT, yavka.SAT) &&
                Objects.equals(complains, yavka.complains) &&
                Objects.equals(swell, yavka.swell) &&
                Objects.equals(head_acke, yavka.head_acke);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, patient, added, pulse, baby_beat, mass, ab_circ, ab_hig, SAT, DAT, complains, swell, head_acke);
    }
    public void safeMergeFrom(Yavka yavka) {
        if (yavka.pulse != null) {
            this.pulse = yavka.pulse;
        }
        if (yavka.complains != null) {
            this.complains = yavka.complains;
        }
        if (yavka.baby_beat != null) {
            this.baby_beat = yavka.baby_beat;
        }
        if (yavka.ab_circ != null) {
            this.ab_circ = yavka.ab_circ;
        }
        if (yavka.temperature != null) {
            this.temperature = yavka.temperature;
        }
        if (yavka.mass != null) {
            this.mass = yavka.mass;
        }
    }
}
