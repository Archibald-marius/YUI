package app.controllers;

import javax.persistence.*;

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

    @Column(name="about", length = 5000)
    private String about;

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

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public void saveCopyFrom(Profile other){
        if(other.about != null){
            this.about = other.about;
        }
    }
}
