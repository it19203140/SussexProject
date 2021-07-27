package com.sussex.database;

public class CommonConfigurations {

	/*
	 * Database name for the project in MySQL --->  sussex_db
	 */
	public static final String DATABASE_NAME = "sussex_db";
	
	
	/*
	 * The username provided in the MySQL Workbench which is by default --->  root
	 */
	public static final String MYSQL_WORKBENCH_USERNAME = "root";
	
	
	/* 
	 * The password for MySQL Workbench which ---> kushan123
	 */
	public static final String MYSQL_WORKBENCH_PASSWORD = "kushan123";
	
	/*
	 * The static path of the project ---> "C:\\Users\\Kushan Jayasekera\\eclipse-workspace\\Sussex_project\\src\\main\\webapp\\"
	 * 	   dynamic path of the project ---> 
	 */
	public static final String PROJECT_PATH = "C:\\Users\\Kushan Jayasekera\\eclipse-workspace\\Sussex_project\\src\\main\\webapp\\";
	//public static final String PROJECT_PATH = getServletContext().getRealPath("");
	
	/*
	 * The folder the uploaded images in the payment registration
	 */
	public static final String IMG_UPLOAD_DIR = "WEB-INF\\UploadedImages";
	
	/*
	 * Final image upload path
	 */
	public static final String REGISTRATION_IMAGE_UPLOAD_PATH = CommonConfigurations.PROJECT_PATH + CommonConfigurations.IMG_UPLOAD_DIR;
	
	/*
	 * The admin username to login to the admin panel --->  root
	 */
	public static final String ADMIN_USERNAME = "Kushan";
	
	/*
	 * The admin password to login to the admin panel --->  root
	 */
	public static final String ADMIN_PASSWORD = "kushan123";
}
