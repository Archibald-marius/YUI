package app.controllers.Models;

import javax.persistence.*;

@Entity
@Table(name="Pathology")
public class Pathology {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name="pathology_name", unique = true, length = 25)
    private String name;

    public Pathology(){

    }
    public Pathology(String name) {
        this.name=name;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}
