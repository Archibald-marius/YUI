package app.controllers.Models;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "cities")
public class Cities {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "city")
    private String name = null;

    @Column(name = "country")
    private Long country;

    @Column(name = "value")
    private Long value;

    @Column(name = "ru")
    private String ru;

    public Cities() {
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

    public void setName(String city) {
        this.name = city;
    }

    public Long getCountry() {
        return country;
    }

    public void setCountry(Long country) {
        this.country = country;
    }

    public Long getValue() {
        return value;
    }

    public void setValue(Long value) {
        this.value = value;
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
        Cities cities = (Cities) o;
        return Objects.equals(id, cities.id) &&
                Objects.equals(name, cities.name) &&
                Objects.equals(country, cities.country);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, country);
    }
}
