package app.controllers.Models;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name="BlackList")
public class BlackList {

    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name="own")
    private Long own;

    @Column(name="block")
    private Long block;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getOwn() {
        return own;
    }

    public void setOwn(Long own) {
        this.own = own;
    }

    public Long getBlock() {
        return block;
    }

    public void setBlock(Long block) {
        this.block = block;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BlackList blackList = (BlackList) o;
        return Objects.equals(id, blackList.id) &&
                Objects.equals(own, blackList.own) &&
                Objects.equals(block, blackList.block);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, own, block);
    }

    @Override
    public String toString() {
        return "BlackList{" +
                "id=" + id +
                ", own=" + own +
                ", block=" + block +
                '}';
    }
}
