package com.webapp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import com.webapp.security.CustomAuthenticationFailureHandler;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(WebSecurityConfig.class);
	
	@Value("${publicUrls}")
	private String publicUrls;
	
    @Qualifier("userDetailsServiceImpl")
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
    //@// @formatter:off
        http
        .authorizeRequests()
            .antMatchers("/registration")
            .permitAll()
            .anyRequest().authenticated()
            .and()
        .formLogin()
            .loginPage("/login")
            .permitAll()
            .and()
        .logout()
            .permitAll();
	// @formatter:on
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
    //@// @formatter:off
    	web
    		.ignoring()
    		.antMatchers("/resources/**")
    		.antMatchers("/publics/**");
    	String[] urls = publicUrls.split(",");
    	System.out.println(publicUrls);
        for (String urlWithMethod : urls) {
        	String[] url = urlWithMethod.split(":");
        	if (url.length != 2) {
				continue;
			}
			HttpMethod method = HttpMethod.resolve(url[0].toUpperCase());
			if (method != null) {
				web.ignoring().antMatchers(method, url[1]);
			} else {
				LOGGER.warn("Invalid public url config {}. Method name is not valid.", url[0]);
			}
		}	 
	// @formatter:on
    }
    

    @Bean
    public AuthenticationFailureHandler authenticationFailureHandler() {
        return new CustomAuthenticationFailureHandler();
    }	
    
    @Bean
    public AuthenticationManager customAuthenticationManager() throws Exception {
        return authenticationManager();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
    }
}