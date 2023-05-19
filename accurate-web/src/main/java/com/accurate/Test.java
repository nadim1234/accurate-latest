package com.accurate;

import org.apache.log4j.Logger;

public class Test {
	static Logger logger=Logger.getLogger(Test.class);
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		logger.debug("Hello this is a debug message");  
		logger.info("Hello this is an info message");  
		System.out.println("hello");
	}

}
