package com.jsp.initializer;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.jsp.configuration.OnlineStoreConfiguration;

public class OnlineStoreInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	
	// used for root application context (like services, repositories etc.)
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}
	
	// used for servlet application context (like controller, view resolver etc.)
	@Override
	protected Class<?>[] getServletConfigClasses() {
		// returns the configuration class for dispatcher servlet
		return new Class[] {OnlineStoreConfiguration.class};
	}
	
	// defines the url pattern to map the dispatcher servlet
	@Override
	protected String[] getServletMappings() {
		// maps all requests to the dispatcher servlet
		return new String[] {"/"};
	}

}
