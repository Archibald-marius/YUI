package app.controllers.Services;

import app.controllers.Dao.UserDao;
import app.controllers.Dao.VerificationDao;
import app.controllers.Models.Profile;
import app.controllers.Models.SiteUser;
import app.controllers.Models.TokenType;
import app.controllers.Models.VerificationToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.UUID;

import org.springframework.security.core.userdetails.User;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private VerificationDao verificationDao;

    public void register(SiteUser user) {

//        user.setRole("ROLE_USER");
        userDao.save(user);


    }

    public void save(SiteUser user){
        userDao.save(user);

    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

        SiteUser user = userDao.findByEmail(email);

        if(user == null) {
            return null;
        }

        List<GrantedAuthority> auth = AuthorityUtils.commaSeparatedStringToAuthorityList(user.getRole());

        String password = user.getPassword();

        Boolean enabled = user.getEnabled();

        return new User(email, password, enabled, true, true, true, auth);
    }

    public String createEmailVerificationToken(SiteUser user){
        VerificationToken token = new VerificationToken(UUID.randomUUID().toString(), user, TokenType.REGISTRATION);
        verificationDao.save(token);
        return token.getToken();
    }

    public VerificationToken getVerificationToken(String token){
        return verificationDao.findByToken(token);
    }

    public SiteUser get(String email){
        return userDao.findByEmail(email);
    }

    public SiteUser get(Long id) {
        return userDao.findById(id).get();
    }

    public String getUserName(Long chatWithUserId) {
        SiteUser user = userDao.findById(chatWithUserId).get();
        return user.getFirstname()+" "+ user.getSurname();
    }

    public void deleteToken(VerificationToken token) {
        verificationDao.delete(token);
    }

    public List<SiteUser> getByRole(String role){
        return userDao.findAllByRole(role);
    }

}
