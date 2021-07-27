package com.sussex.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {
	
	
	/* 
	 * 
	 * The localhost server which hosts the MySQL database with : schema name --> sussex_db
	 * 															  port --> sussex_db
	 * 															  autoReconnect --> true;
	 * 															  SSL --> false (needs to be set true in deployment after the purchase of an appropriate SSL certificate)
	 * 
	 */
	private static final String driverURL = "jdbc:mysql://localhost:3306/" + CommonConfigurations.DATABASE_NAME + "?autoReconnect=true&useSSL=false";
	
	
	/*
	 * Single connection instances
	 */
	private static Connection conn;

	
	/*
	 * The function used to connect with the database via JDBC driver
	 */
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(driverURL, CommonConfigurations.MYSQL_WORKBENCH_USERNAME, CommonConfigurations.MYSQL_WORKBENCH_PASSWORD);
		}
		catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
