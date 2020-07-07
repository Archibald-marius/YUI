package app.controllers.Models;


import app.controllers.Validation.PasswordMatch;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.persistence.*;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;

@Entity
@Table(name="users")
@PasswordMatch(message="{register.repeatpassword.mismatch}")
public class SiteUser  {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    private Long id;

    @Column(name="email", unique = true)
    @Email(message = "{register.email.invalid}")
    @NotBlank(message = "{register.email.invalid}")
    private String email;

    @Transient
    @Size(min=5, max=15, message = "{register.password.size}")
    private String plainPassword;

    @Column(name="password")
    private String password;

    @Column(name = "enabled")
    private Boolean enabled = false;

    @Column(name="firstname")
    private String firstname;

    @Column(name="surname")
    private String surname;

    @Column(name="city")
    private String city="";

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

    @Column(name="neonat")
    private Boolean neonat=false;

    @Column(name="vascularsurgery")
    private Boolean vascularsurgery=false;

    @Column(name="plasticsurgery")
    private Boolean plasticsurgery=false;

    @Column(name="alergology")
    private Boolean alergology=false;

    @Column(name="orthopedy")
    private Boolean orthopedy=false;

    @Column(name="endocrinology")
    private Boolean endocrinology=false;

    @Column(name="urology")
    private Boolean urology=false;

    @Column(name="published")
    private Boolean published = false;

    @Column(name="dependency")
    private String dependency;

    @Column(name="hospital")
    private String hospital;

    @Column(name="subscription")
    private Long subscription;

    @Column(name = "gender")
    private Long gender;

    @Column(name = "country")
    private String country;

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Long getGender() {
        return gender;
    }

    public void setGender(Long gender) {
        this.gender = gender;
    }

    public Long getSubscription() {
        return subscription;
    }

    public void setSubscription(Long subscription) {
        this.subscription = subscription;
    }

    public Boolean getUrology() {
        return urology;
    }

    public void setUrology(Boolean urology) {
        this.urology = urology;
    }

    public String getHospital() {
        return hospital;
    }

    public void setHospital(String hospital) {
        this.hospital = hospital;
    }

    public String getDependency() {
        return dependency;
    }

    public void setDependency(String dependency) {
        this.dependency = dependency;
    }

    @Column(name="role", length=20)
    private String role;

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
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

    public Boolean getPublished() {
        return published;
    }

    public void setPublished(Boolean published) {
        this.published = published;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Transient
    private String repeatPassword;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPlainPassword() {
        return plainPassword;
    }

    public void setPlainPassword(String plainPassword) {
        this.password=new BCryptPasswordEncoder().encode(plainPassword);
        this.plainPassword = plainPassword;
    }

    public String getRepeatPassword() {
        return repeatPassword;
    }

    public void setRepeatPassword(String repeatPassword) {
        this.repeatPassword = repeatPassword;
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

    public boolean isAccountNonExpired() {
        return true;
    }

    public boolean isAccountNonLocked() {
        return true;
    }

    public boolean isCredentialsNonExpired() {
        return true;
    }

    public boolean isAccountEnabled() {
        return true;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
//    public void safeMergeFrom(Profile profile) {
////        if (siteUser.therapy != null) {
////            this.therapy = siteUser.therapy;
////        }
////        if (siteUser.gynecology != null) {
////            this.gynecology = siteUser.gynecology;
////        }
////        if (siteUser.surgery != null) {
////            this.surgery = siteUser.surgery;
////        }
//        if (profile.getFirstname() != null) {
//            this.firstname = profile.getFirstname();
//        }
//    }

    public SiteUser(){

    }
}
