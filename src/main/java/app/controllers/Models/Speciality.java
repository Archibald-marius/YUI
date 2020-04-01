package app.controllers.Models;

import javax.persistence.*;


@Entity
    @Table(name = "speciality")
    public class Speciality implements Comparable<Speciality> {

        @Id
        @Column(name = "id")
        @GeneratedValue(strategy = GenerationType.AUTO)
        private Long id;

        @Column(name = "interest_name", unique = true, length = 25)
        private String name;

        public Speciality() {

        }

        public Speciality(String name) {
            this.name = name;
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

        @Override
        public int hashCode() {
            final int prime = 31;
            int result = 1;
            result = prime * result + ((name == null) ? 0 : name.hashCode());
            return result;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj)
                return true;
            if (obj == null)
                return false;
            if (getClass() != obj.getClass())
                return false;
            Speciality other = (Speciality) obj;
            if (name == null) {
                if (other.name != null)
                    return false;
            } else if (!name.equals(other.name))
                return false;
            return true;
        }


    @Override
    public int compareTo(Speciality o) {
        return this.name.compareTo(o.name);
    }
}