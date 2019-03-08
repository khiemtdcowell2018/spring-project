package org.enterprise.web.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * 
 * @author KHIEMTD
 *
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	@Qualifier("databaseAuthenticationService")
	UserDetailsService userDetailsService;
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/").access("hasRole('SHOUKAISHA') or hasRole('KANRISHA')")
			.and()
				.formLogin().loginPage("/login").loginProcessingUrl("/login").usernameParameter("loginId").passwordParameter("password")
			.and()
				.csrf()
			.and()
				.exceptionHandling().accessDeniedPage("/access-denied");
	}
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder authen) throws Exception {
		authen.userDetailsService(userDetailsService);
		authen.authenticationProvider(authenticationProvider());
	}

	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider authenProvider = new DaoAuthenticationProvider();
		authenProvider.setUserDetailsService(userDetailsService);
		authenProvider.setPasswordEncoder(passwordEncoder());
		return authenProvider;
	}
}
