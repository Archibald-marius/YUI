//package app.controllers.Models;
//
//import app.controllers.Validation.PasswordMatch;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import javax.persistence.*;
//import javax.validation.constraints.Email;
//import javax.validation.constraints.NotBlank;
//import javax.validation.constraints.NotNull;
//import javax.validation.constraints.Size;
//
//@Entity
//@Table(name="patusers")
//@PasswordMatch(message="{register.repeatpassword.mismatch}")
//public class PatUsers  {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    @Column(name="id")
//    private Long id;
//
//    @Column(name="email", unique = true)
//    @Email(message = "{register.email.invalid}")
//    @NotBlank(message = "{register.email.invalid}")
//    private String email;
//
//    @Transient
//    @Size(min=5, max=15, message = "{register.password.size}")
//    private String plainPassword;
//
//    @Column(name="password")
//    private String password;
//
//    @Column(name = "enabled")
//    private boolean enabled = false;
//
//    @NotNull
//    @Column(name="firstname")
//    private String firstname;
//
//    @NotNull
//    @Column(name="surname")
//    private String surname;
//
//    public String getFirstname() {
//        return firstname;
//    }
//
//    public void setFirstname(String firstname) {
//        this.firstname = firstname;
//    }
//
//    public String getSurname() {
//        return surname;
//    }
//
//    public void setSurname(String surname) {
//        this.surname = surname;
//    }
//
//    @Transient
//    private String repeatPassword;
//
//    @Column(name="role", length=20)
//    private String role;
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password;
//    }
//
//    public String getRole() {
//        return role;
//    }
//
//    public void setRole(String role) {
//        this.role = role;
//    }
//
//    public String getPlainPassword() {
//        return plainPassword;
//    }
//
//    public void setPlainPassword(String plainPassword) {
//        this.password=new BCryptPasswordEncoder().encode(plainPassword);
//        this.plainPassword = plainPassword;
//    }
//
//    public String getRepeatPassword() {
//        return repeatPassword;
//    }
//
//    public void setRepeatPassword(String repeatPassword) {
//        this.repeatPassword = repeatPassword;
//    }
//
//    public boolean isEnabled() {
//        return enabled;
//    }
//
//    public void setEnabled(boolean enabled) {
//        this.enabled = enabled;
//    }
//
//    public boolean isAccountNonExpired() {
//        return true;
//    }
//
//    public boolean isAccountNonLocked() {
//        return true;
//    }
//
//    public boolean isCredentialsNonExpired() {
//        return true;
//    }
//
//    public boolean isAccountEnabled() {
//        return true;
//    }
//}