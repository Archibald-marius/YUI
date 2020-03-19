package app.controllers;
import app.controllers.Dao.UserDao;
import app.controllers.Models.SiteUser;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.dao.DataAccessException;

public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserDao userDao;


    public CustomUserDetail loadUserByUsername(String email) throws UsernameNotFoundException, DataAccessException {
        // returns the get(0) of the user list obtained from the db
        SiteUser domainUser = userDao.findByEmail(email);



        CustomUserDetail customUserDetail=new CustomUserDetail();
        customUserDetail.setUser(domainUser);

        return customUserDetail;

    }

}