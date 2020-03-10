package app.controllers;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "yavka")
public class Yavka {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name="added")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "yyyy/MM/dd hh:mm:ss")
    private Date added;

    @Column(name = "pulse")
    private Long pulse;

    @Column(name = "baby_beat")
    private Long baby_beat;

    @Column(name = "mass")
    private Long mass;

    @Column(name = "ab_circ")
    private Long ab_circ;

    @Column(name = "ab_hig")
    private Long ab_hig;

    @Column(name = "press")
    private Long press;

    @Column(name = "complains")
    private String complains;

    @Column(name = "swell")
    private  Boolean swell;

    @Column(name = "head_acke")
    private String head_acke;

}
