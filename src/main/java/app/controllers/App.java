package app.controllers;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.boot.web.servlet.support.ErrorPageFilter;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
//import org.springframework.cloud.aws.context.config.annotation.EnableContextInstanceData;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;

@RestController
@EnableAsync
@SpringBootApplication
public class App extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(App.class);
    }

    @Bean
    public TilesConfigurer tilesConfigurer(){
        TilesConfigurer tilesConfigurer = new TilesConfigurer();

        String[] defs = {"/WEB-INF/tiles.xml"};
        tilesConfigurer.setDefinitions(defs);

        return tilesConfigurer;

    }

    @Bean
    public UrlBasedViewResolver tilesViewResolver(){
        UrlBasedViewResolver tilesViewResolver = new UrlBasedViewResolver();

        tilesViewResolver.setViewClass(TilesView.class);

        return tilesViewResolver;
    }

    @Bean
    PasswordEncoder getEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Configuration
    public class ServerConfig {
        @Bean
        public ConfigurableServletWebServerFactory webServerFactory() {
            TomcatServletWebServerFactory factory = new TomcatServletWebServerFactory();

            factory.addErrorPages(new ErrorPage(HttpStatus.FORBIDDEN, "/403"));
            return factory;
        }
    }

//    @Bean
//    public ErrorPageFilter errorPageFilter() {
//        return new ErrorPageFilter();
//    }
//
//    @Bean
//    public FilterRegistrationBean disableSpringBootErrorFilter(ErrorPageFilter filter) {
//        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
//        filterRegistrationBean.setFilter(filter);
//        filterRegistrationBean.setEnabled(false);
//        return filterRegistrationBean;
//    }
}