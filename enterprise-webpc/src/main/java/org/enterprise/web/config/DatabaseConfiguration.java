package org.enterprise.web.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScans({
	@ComponentScan({"org.enterprise.entity"}),
	@ComponentScan({"org.enterprise.repository"}),
	@ComponentScan({"org.enterprise.service"})
})	
@PropertySource(value = { "classpath:database-configuration/database.properties" })
public class DatabaseConfiguration {

	@Autowired
	private Environment env;

	/**
	 * Configure data source
	 * 
	 * @return javax.sql.DataSource
	 */
	@Bean
	public DataSource createDataSource() {
		DriverManagerDataSource driver = new DriverManagerDataSource();
		driver.setDriverClassName(env.getRequiredProperty("jdbc.driverClassName"));
		driver.setUrl(env.getRequiredProperty("jdbc.url"));
		driver.setUsername(env.getRequiredProperty("jdbc.username"));
		driver.setPassword(env.getRequiredProperty("jdbc.password"));
		return driver;
	}

	/**
	 * Configure session factory
	 * @return LocalSessionFactoryBean
	 */
	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(createDataSource());
		sessionFactory.setPackagesToScan(new String[] { "org.enterprise.entity" });
		sessionFactory.setHibernateProperties(getHibernateProperties());
		return sessionFactory;
	}

	/**
	 * Setting hibernate's properties
	 * @return Properties
	 */
	private Properties getHibernateProperties() {
		Properties prop = new Properties();
		prop.put("hibernate.dialect", env.getRequiredProperty("hibernate.dialect"));
		prop.put("hibernate.show_sql", env.getRequiredProperty("hibernate.show_sql"));
		prop.put("hibernate.format_sql", env.getRequiredProperty("hibernate.format_sql"));
		return prop;
	}
	
	/**
	 * Configure transaction manager and apply for session factory
	 * @param sessionFactory
	 * @return HibernateTransactionManager
	 */
	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(sessionFactory);
		return txManager;
	}
}
