package app.controllers.Configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import app.controllers.Services.UserService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.context.annotation.Bean;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/", "/register", "/register/*", "/choose", "/verifyemail", "/registrationconfirmed",
                        "/invaliduser",
                        "/expiredtoken", "/confirmregister", "/success", "/forgotpassword", "/reset",
                        "/newpass", "/changepassword")
                .permitAll()
                .antMatchers(
                        "/js/*",
                        "/css/*",
                        "/img/*")
                .permitAll()
                .antMatchers("/addstatus", "/editstatus", "/deletestatus", "/viewstatus", "/profile", "/profile/*", "/edit-profile-about", "/addpatient", "/patients", "/patientcard", "/about", "/search", "/patientcard/*", "/editPatientCard", "/editPatientCard/*", "/yavka", "/yavka/*", "/showVisites", "/showVisites/*", "/editvisit", "/editvisit/*", "/webjars/**", "/chat/**", "/chatview", "/chatview/*", "/conversation", "/conversation/*", "conversation/*")
                .hasRole("USER")
                .antMatchers("/profile", "/profile/*", "/edit-profile-about", "/addpatient", "/patients", "/patientcard", "/about", "/search", "/patientcard/*", "/editPatientCard", "/editPatientCard/*", "/yavka", "/yavka/*", "/showVisites", "/showVisites/*", "/editvisit", "/editvisit/*", "/webjars/**", "/chat/**", "/chatview", "/chatview/*", "/conversation", "/conversation/*", "conversation/*", "/checkmessages", "/speciality", "/publish", "/checkmessages", "/dialogs", "/searchdoctor", "/docs", "/docs/**", "/getcontact/**", "/params", "/ind/*", "/control", "/blacklist/*", "/homemes/*", "/suggest", "/mail/*", "/info", "/option", "/adminspace")
                .authenticated()
                .anyRequest()
                .denyAll()
                .and()
                .formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/", true)
                .permitAll()
                .and()
                .logout()
                .permitAll();
    }

    @Autowired
    protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception{
        auth.inMemoryAuthentication()
                .withUser("john")
                .password(passwordEncoder().encode("hello"))
                .roles("USER");

    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception{
        auth.userDetailsService(userService).passwordEncoder(passwordEncoder);
    }

    @Bean
    PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
}