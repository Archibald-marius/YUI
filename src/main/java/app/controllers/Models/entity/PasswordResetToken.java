package app.controllers.Models.entity;

import app.controllers.Models.SiteUser;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.Date;


@Entity
public class PasswordResetToken {

        private static final int EXPIRATION = 60 * 24;

        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        private Long id;

        private String token;

        @OneToOne(targetEntity = SiteUser.class, fetch = FetchType.EAGER)
        @JoinColumn(nullable = false, name = "user_id")
        private SiteUser user;

        private Date expiryDate;
    }

