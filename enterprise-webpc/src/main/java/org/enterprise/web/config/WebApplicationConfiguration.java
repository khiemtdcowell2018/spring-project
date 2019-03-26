package org.enterprise.web.config;

import java.util.Locale;
import java.util.Properties;

import org.enterprise.web.config.converter.KenriToRoleConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.format.FormatterRegistry;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 * 
 * @author KHIEMTD
 *
 */
@Configuration
@EnableWebMvc
@ComponentScans({ @ComponentScan(basePackages = { "org.enterprise.web.*" }) })
@PropertySource(value = { "classpath:system-configuration/enviroment.properties" })
public class WebApplicationConfiguration implements WebMvcConfigurer {

	@Autowired
	private Environment env;

	@Autowired
	KenriToRoleConverter kenriToRoleConverter;

	/**
	 * Setting view resolver (view folder setting, view file extension setting)
	 * 
	 * @return InternalResourceViewResolver
	 */
	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	/**
	 * Setting message resources (.properties files using for i18N)
	 * 
	 * @return ReloadableResourceBundleMessageSource
	 */
	@Bean
	public MessageSource messageSource() {
		ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
		messageSource.setBasename("classpath:message");
		messageSource.setDefaultEncoding("UTF-8");
		messageSource.setUseCodeAsDefaultMessage(true);
		return messageSource;
	}

	/**
	 * Setting for change locale when using "language=?" in web browser's url
	 * 
	 * @return
	 */
	@Bean
	public LocaleChangeInterceptor localeChangeInterceptor() {
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		interceptor.setParamName("language");
		return interceptor;
	}

	@Bean(name = "localeResolver")
	public SessionLocaleResolver sessionLocaleResolver() {
		SessionLocaleResolver localeResolver = new SessionLocaleResolver();
		localeResolver.setDefaultLocale(new Locale("ja", "JP"));
		return localeResolver;
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(localeChangeInterceptor());
	}

	/**
	 * Configure resources (stylesheets, javascripts, images, etc...)
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static-resources/**").addResourceLocations("/static-resources/");
	}

	/**
	 * Get settings from file (enviroment.properties)
	 * 
	 * @return
	 */
	@Bean
	public EnterpriseConfiguration getEnterpriseConfiguration() {
		EnterpriseConfiguration configs = new EnterpriseConfiguration();
		configs.setPagesLimit(Integer.valueOf(env.getRequiredProperty("system.configs.pager.limit")));
		configs.setPagesInPagerLimit(
				Integer.valueOf(env.getRequiredProperty("system.configs.pager.limitPagesInPager")));
		configs.setMailFrom(env.getRequiredProperty("system.mailservice.from.address"));
		return configs;
	}

	@Override
	public void addFormatters(FormatterRegistry registry) {
		registry.addConverter(kenriToRoleConverter);
	}

	/**
	 * Java Mail configuration
	 */
	@Bean("amazonMailSender")
	public JavaMailSender getAmazonMailSender() {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		// Amazon Simple Mail Service Settings
		mailSender.setHost(env.getRequiredProperty("amazon.ses.host"));
		mailSender.setPort(Integer.valueOf(env.getRequiredProperty("amazon.ses.mail.smtp.port")));
		mailSender.setUsername(env.getRequiredProperty("amazon.ses.smtp.username").trim());
		mailSender.setPassword(env.getRequiredProperty("amazon.ses.smtp.password").trim());
		mailSender.setJavaMailProperties(javaMailProperties(0));
		return mailSender;
	}
	
	@Bean("googleMailSender")
	public JavaMailSender getGoogleMailSender() {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		// Google Mail Service Settings
		mailSender.setHost(env.getRequiredProperty("google.mail.host").trim());
		mailSender.setPort(Integer.valueOf(env.getRequiredProperty("google.mail.port")));
		mailSender.setUsername(env.getRequiredProperty("google.mail.username").trim());
		mailSender.setPassword(env.getRequiredProperty("google.mail.password").trim());
		mailSender.setJavaMailProperties(javaMailProperties(1));
		return mailSender;
	}

	/**
	 * Get mail properties
	 * @param mode {0: Amazon simple mail service, 1: Google mail service}
	 * @return
	 */
	private Properties javaMailProperties(int mode) {
		Properties props = new Properties();
		if (mode == 0) {
			// Amazon simple mail properties settings
			props.put("mail.transport.protocol", env.getRequiredProperty("amazon.ses.mail.transport.protocol").trim());
			props.put("mail.smtp.starttls.enable", env.getRequiredProperty("amazon.ses.mail.smtp.starttls.enable").trim());
			props.put("mail.smtp.auth", env.getRequiredProperty("amazon.ses.mail.smtp.auth").trim());
			props.put("mail.debug", env.getRequiredProperty("amazon.ses.mail.debug").trim());
		} else {
			// Google mail properties settings
			props.put("mail.transport.protocol", env.getRequiredProperty("google.mail.transport.protocol").trim());
			props.put("mail.smtp.starttls.enable", env.getRequiredProperty("google.mail.smtp.starttls.enable").trim());
			props.put("mail.smtp.auth", env.getRequiredProperty("google.mail.smtp.auth").trim());
			props.put("mail.debug", env.getRequiredProperty("google.mail.debug").trim());
		}
		
		return props;
	}

}
