package app.controllers.Models;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "countries")
public class Countries {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name")
    private String name = null;

    @Column(name = "ru")
    private String ru = "";

    public Countries() {
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

    public void setName(String country) {
        this.name = country;
    }

    public String getRu() {
        return ru;
    }

    public void setRu(String ru) {
        this.ru = ru;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Countries countries = (Countries) o;
        return Objects.equals(id, countries.id) &&
                Objects.equals(name, countries.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }
}
