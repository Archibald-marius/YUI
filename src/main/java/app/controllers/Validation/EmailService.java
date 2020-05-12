package app.controllers.Validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.mail.javamail.JavaMailSender;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;

@Service
public class EmailService {

    private TemplateEngine templateEngine;

    @Autowired
    private JavaMailSender mailSender;

    @Value("${mail.enable}")
    private boolean enable;

    @Value("${site.url}")
    private String url;

    private void send(MimeMessagePreparator preparator){
        if(enable){
            mailSender.send(preparator);
        }

    }

    @Autowired
    public EmailService(TemplateEngine templateEngine){
        ClassLoaderTemplateResolver templateResolver = new ClassLoaderTemplateResolver();

        templateResolver.setPrefix("mail/");
        templateResolver.setSuffix(".html");
        templateResolver.setTemplateMode("HTML5");
        templateResolver.setCacheable(false);
        templateEngine.setTemplateResolver(templateResolver);
        this.templateEngine=templateEngine;
    }

    @Async
    public void sendVerificationEmail(String emailAddress, String token){

        Context context = new Context();
        context.setVariable("token", token);
        context.setVariable("url", url);
        String emailContents = templateEngine.process("verifyemail", context);

        MimeMessagePreparator preparator = new MimeMessagePreparator() {
            @Override
            public void prepare(MimeMessage mimeMessage) throws Exception {
                MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");

                message.setTo(emailAddress);
                message.setFrom(new InternetAddress("no-reply@gmail.com"));
                message.setSubject("Верификация InMedical");
                message.setSentDate(new Date());

                message.setText(emailContents, true);

//                mimeMessage.setFrom("no-reply@gmail.com");
//                mimeMessage.setRecipients(Message.RecipientType.TO, emailAddress);
//                mimeMessage.setSubject("Верификация", "UTF-8");
//                mimeMessage.setContent("<p>Спасибо за регистрацию!</p>\n" +
//                        "Пройдите по <a th:href=\"@{${url} + '/confirmregister?t=' + ${token}}\">ссылке</a> для подтверждения Вашей электронной почты. </p>\n", "text/html; charset=UTF-8");

            }
        };

        send(preparator);
    }
}
