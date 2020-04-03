package app.controllers.Models;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="profile")
public class Profile {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    private Long id;

    @OneToOne(targetEntity = SiteUser.class)
    @JoinColumn(name = "user_id", nullable = false)
    private SiteUser user;

    @Column(name="firstname", length = 5000)
    private String firstname;

    @Column(name="surname")
    private String surname;

    @Column(name="city")
    private String city;

    @Column(name="hospital")
    private String hospital;

    @Column(name="therapy")
    private Boolean therapy = false;

    @Column(name="gynecology")
    private Boolean gynecology = false;

    @Column(name="surgery")
    private Boolean surgery=false;

    @Column(name="cardiology")
    private Boolean cardiology=false;

    @Column(name="gastro")
    private Boolean gastro=false;

    @Column(name="neurology")
    private Boolean neurology=false;

    @Column(name="opht")
    private Boolean opht=false;

    @Column(name="otolor")
    private Boolean otolor=false;

    @Column(name="ob")
    private Boolean ob=false;

    @Column(name="reproductology")
    private Boolean reproductology=false;

    @Column(name="pediatrition")
    private Boolean pediatrition=false;

    @Column(name="role", length=20)
    private String role;

    @Column(name="vascularsurgery")
    private Boolean vascularsurgery=false;

    @Column(name="plasticsurgery")
    private Boolean plasticsurgery=false;

    @Column(name="alergology")
    private Boolean alergology=false;

    @Column(name="endocrinology")
    private Boolean endocrinology=false;

    @Column(name="dependency")
    private String dependency;

    @Column(name="email", unique = true)
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHospital() {
        return hospital;
    }

    public void setHospital(String hospital) {
        this.hospital = hospital;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDependency() {
        return dependency;
    }

    public void setDependency(String dependency) {
        this.dependency = dependency;
    }

    public Boolean getEndocrinology() {
        return endocrinology;
    }

    public void setEndocrinology(Boolean endocrinology) {
        this.endocrinology = endocrinology;
    }

    public Boolean getAlergology() {
        return alergology;
    }

    public void setAlergology(Boolean alergology) {
        this.alergology = alergology;
    }

    public Boolean getOrthopedy() {
        return orthopedy;
    }

    public void setOrthopedy(Boolean orthopedy) {
        this.orthopedy = orthopedy;
    }

    @Column(name="orthopedy")
    private Boolean orthopedy=false;

    public Boolean getPlasticsurgery() {
        return plasticsurgery;
    }

    public void setPlasticsurgery(Boolean plasticsurgery) {
        this.plasticsurgery = plasticsurgery;
    }

    public Boolean getVascularsurgery() {
        return vascularsurgery;
    }

    public void setVascularsurgery(Boolean vascularsurgery) {
        this.vascularsurgery = vascularsurgery;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Boolean getCardiology() {
        return cardiology;
    }

    public void setCardiology(Boolean cardiology) {
        this.cardiology = cardiology;
    }

    public Boolean getGastro() {
        return gastro;
    }

    public void setGastro(Boolean gastro) {
        this.gastro = gastro;
    }

    public Boolean getNeurology() {
        return neurology;
    }

    public void setNeurology(Boolean neurology) {
        this.neurology = neurology;
    }

    public Boolean getOpht() {
        return opht;
    }

    public void setOpht(Boolean opht) {
        this.opht = opht;
    }

    public Boolean getOtolor() {
        return otolor;
    }

    public void setOtolor(Boolean otolor) {
        this.otolor = otolor;
    }

    public Boolean getOb() {
        return ob;
    }

    public void setOb(Boolean ob) {
        this.ob = ob;
    }

    public Boolean getReproductology() {
        return reproductology;
    }

    public void setReproductology(Boolean reproductology) {
        this.reproductology = reproductology;
    }

    public Boolean getPediatrition() {
        return pediatrition;
    }

    public void setPediatrition(Boolean pediatrition) {
        this.pediatrition = pediatrition;
    }

    public Boolean getNeonat() {
        return neonat;
    }

    public void setNeonat(Boolean neonat) {
        this.neonat = neonat;
    }

    @Column(name="neonat")
    private Boolean neonat=false;

    @Column(name="published")
    private Boolean published = false;

    public Boolean getPublished() {
        return published;
    }

    public void setPublished(Boolean published) {
        this.published = published;
    }

    public String getSurname() {
        return surname;
    }

    public Boolean getTherapy() {
        return therapy;
    }

    public void setTherapy(Boolean therapy) {
        this.therapy = therapy;
    }

    public Boolean getGynecology() {
        return gynecology;
    }

    public void setGynecology(Boolean gynecology) {
        this.gynecology = gynecology;
    }

    public Boolean getSurgery() {
        return surgery;
    }

    public void setSurgery(Boolean surgery) {
        this.surgery = surgery;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public SiteUser getUser() {
        return user;
    }

    public void setUser(SiteUser user) {
        this.user = user;
    }



    public void safeCopyFrom(Profile webProfile){
        if(webProfile.firstname !=null){
            this.firstname=webProfile.firstname;
        }
        if(webProfile.surname !=null){
            this.surname=webProfile.surname;
        }
        if(webProfile.therapy !=null) {
            this.therapy = webProfile.therapy;
        }
        if(webProfile.surgery !=null){
            this.surgery=webProfile.surgery;
        }
        if(webProfile.gynecology !=null){
            this.gynecology=webProfile.gynecology;
        }
        if(webProfile.cardiology !=null){
            this.cardiology=webProfile.cardiology;
        }
        if(webProfile.gastro !=null){
            this.gastro=webProfile.gastro;
        }
        if(webProfile.neurology !=null){
            this.neurology=webProfile.neurology;
        }
        if(webProfile.opht !=null){
            this.opht=webProfile.opht;
        }
        if(webProfile.otolor !=null){
            this.otolor=webProfile.otolor;
        }
        if(webProfile.ob !=null){
            this.ob=webProfile.ob;
        }
        if(webProfile.reproductology !=null){
            this.reproductology=webProfile.reproductology;
        }
        if(webProfile.pediatrition !=null){
            this.pediatrition=webProfile.pediatrition;
        }
        if(webProfile.neonat !=null){
            this.neonat=webProfile.neonat;
        }
        if(webProfile.role !=null){
            this.role=webProfile.role;
        }
        if(webProfile.vascularsurgery !=null){
            this.vascularsurgery=webProfile.vascularsurgery;
        }
        if(webProfile.plasticsurgery !=null){
            this.plasticsurgery=webProfile.plasticsurgery;
        }
        if(webProfile.alergology !=null){
            this.alergology=webProfile.alergology;
        }
        if(webProfile.orthopedy !=null){
            this.orthopedy=webProfile.orthopedy;
        }
        if(webProfile.endocrinology !=null){
            this.endocrinology=webProfile.endocrinology;
        }
        if(webProfile.dependency !=null){
            this.dependency=webProfile.dependency;
        }
        if(webProfile.city !=null){
            this.city=webProfile.city;
        }
        if(webProfile.hospital !=null){
            this.hospital=webProfile.hospital;
        }
        if(webProfile.email !=null){
            this.email=webProfile.email;
        }
        if(webProfile.published !=null){
            this.published=webProfile.published;
        }

    }

    public void safeMergeFrom(Profile webProfile) {
        if(webProfile.firstname !=null){
            this.firstname=webProfile.firstname;
        }
        if(webProfile.surname !=null){
            this.surname=webProfile.surname;
        }
        if(webProfile.therapy !=null) {
            this.therapy = webProfile.therapy;
        }
        if(webProfile.surgery !=null){
            this.surgery=webProfile.surgery;
        }
        if(webProfile.gynecology !=null){
            this.gynecology=webProfile.gynecology;
        }
        if(webProfile.cardiology !=null){
            this.cardiology=webProfile.cardiology;
        }
        if(webProfile.gastro !=null){
            this.gastro=webProfile.gastro;
        }
        if(webProfile.neurology !=null){
            this.neurology=webProfile.neurology;
        }
        if(webProfile.opht !=null){
            this.opht=webProfile.opht;
        }
        if(webProfile.otolor !=null){
            this.otolor=webProfile.otolor;
        }
        if(webProfile.ob !=null){
            this.ob=webProfile.ob;
        }
        if(webProfile.reproductology !=null){
            this.reproductology=webProfile.reproductology;
        }
        if(webProfile.pediatrition !=null){
            this.pediatrition=webProfile.pediatrition;
        }
        if(webProfile.neonat !=null){
            this.neonat=webProfile.neonat;
        }
        if(webProfile.role !=null){
            this.role=webProfile.role;
        }
        if(webProfile.vascularsurgery !=null){
            this.vascularsurgery=webProfile.vascularsurgery;
        }
        if(webProfile.plasticsurgery !=null){
            this.plasticsurgery=webProfile.plasticsurgery;
        }
        if(webProfile.alergology !=null){
            this.alergology=webProfile.alergology;
        }
        if(webProfile.orthopedy !=null){
            this.orthopedy=webProfile.orthopedy;
        }
        if(webProfile.endocrinology !=null){
            this.endocrinology=webProfile.endocrinology;
        }
        if(webProfile.dependency !=null){
            this.dependency=webProfile.dependency;
        }
        if(webProfile.city !=null){
            this.city=webProfile.city;
        }
        if(webProfile.hospital !=null){
            this.hospital=webProfile.hospital;
        }
        if(webProfile.email !=null){
            this.email=webProfile.email;
        }

    }
}
