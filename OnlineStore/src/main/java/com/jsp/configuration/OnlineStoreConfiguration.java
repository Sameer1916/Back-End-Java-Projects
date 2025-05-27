package com.jsp.configuration;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com.jsp")
public class OnlineStoreConfiguration {

	// bean for resolving jsp view names with prefix and suffix
	@Bean
	public InternalResourceViewResolver getResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	// bean to create and return an entity manager
	@Bean
	public EntityManager getEntityManager() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("GroceryStore");
		EntityManager manager = factory.createEntityManager();
		return manager;
	}

	// bean to return the transaction object from entity manager
	@Bean
	public EntityTransaction getTransaction() {
		EntityTransaction transaction = getEntityManager().getTransaction();
		return transaction;
	}
}
