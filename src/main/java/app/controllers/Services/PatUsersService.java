//package app.controllers.Services;
//
//
//import app.controllers.Dao.PatUserDao;
//import app.controllers.Dao.VerificationDao;
//import app.controllers.Models.PatUsers;
//import app.controllers.Models.TokenType;
//import app.controllers.Models.VerificationToken;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.AuthorityUtils;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//import java.util.UUID;
//
//@Service
//public class PatUsersService implements UserDetailsService {
//
//    @Autowired
//    private PatUserDao patUserDao;
//
//    @Autowired
//    private PasswordEncoder passwordEncoder;
//
//    @Autowired
//    private VerificationDao verificationDao;
//
//    public void register(PatUsers user) {
//
//        user.setRole("ROLE_USER");
//        patUserDao.save(user);
//
//
//    }
//
//    public void save(PatUsers user){
//        patUserDao.save(user);
//
//    }
//
//    @Override
//    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
//
//        PatUsers user = patUserDao.findByEmail(email);
//
//        if(user == null) {
//            return null;
//        }
//
//        List<GrantedAuthority> auth = AuthorityUtils.commaSeparatedStringToAuthorityList(user.getRole());
//
//        String password = user.getPassword();
//
//        Boolean enabled = user.isEnabled();
//
//        return new User(email, password, enabled, true, true, true, auth);
//    }
//
//    public String createEmailVerofocationToken(PatUsers user){
//        VerificationToken token = new VerificationToken(UUID.randomUUID().toString(), user, TokenType.REGISTRATION);
//        verificationDao.save(token);
//        return token.getToken();
//    }
//
//    public VerificationToken getVerificationToken(String token){
//        return verificationDao.findByToken(token);
//    }
//
//    public PatUsers get(String email){
//        return patUserDao.findByEmail(email);
//    }
//
//    public PatUsers get(Long id) {
//        return patUserDao.findById(id).get();
//    }
//}
