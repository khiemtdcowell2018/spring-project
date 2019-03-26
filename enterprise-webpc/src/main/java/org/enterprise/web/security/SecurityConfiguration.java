package org.enterprise.web.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.authentication.AuthenticationTrustResolverImpl;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

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

	@Autowired
	PersistentTokenRepository tokenRepository;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/", "/home", "/home/")
					.access("hasRole('SHOUKAISHA') or hasRole('KANRISHA')")
				.antMatchers("/account-management","/account-management/")
					.access("hasRole('SHOUKAISHA') or hasRole('KANRISHA')")
				.antMatchers("/add-new-*", "/add-new-*")
					.access("hasRole('KANRISHA')")
				.antMatchers("/regist", "/regist*")
					.access("hasRole('KANRISHA')")
				.antMatchers("/detail/*", "/detail/*")
					.access("hasRole('SHOUKAISHA') or hasRole('KANRISHA')")
				.antMatchers("/modify-user/*", "/modify-user/*")
					.access("hasRole('KANRISHA')")
			.and()
				.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/login")
				.usernameParameter("loginId")
				.passwordParameter("loginPassword")
			.and().rememberMe()
				.rememberMeParameter("setRemember")
				.tokenRepository(tokenRepository)
				.tokenValiditySeconds(600)
			.and()
				.csrf()
			.and()
				.exceptionHandling()
				.accessDeniedPage("/access-denied");
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

	@Bean
	public AuthenticationTrustResolver getAuthenticationTrustResolver() {
		return new AuthenticationTrustResolverImpl();
	}

	@Bean
	public PersistentTokenBasedRememberMeServices getPersistentTokenBasedRememberMeServices() {
		PersistentTokenBasedRememberMeServices tokenBaseRememberService = new PersistentTokenBasedRememberMeServices("setRemember",
				userDetailsService, tokenRepository);
		return tokenBaseRememberService;
	}
}
