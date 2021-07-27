package com.sussex.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;
import com.sussex.database.DBConnection;

/*
 * 
 * This is the class which is used to access the user data in the database
 * This class will interact with the database connector using JDBC --> DBConnection in com.sussex.database to interact with 
 * It will contain the functions which will be needed to perform CRUD operations
 * 
 */

public class UserDAO {

	private static Connection conn;
	
	/*
	 * Query List
	 * 
	 * -> INSERT USER
	 * -> SELECT SPECIFIC USER BY PRG
	 * -> SELECT ALL USERS
	 * -> DELETE SPECIFIC USER
	 * -> UPDATE SPECIFIC USER
	 * -> VALIDATE SPECIFIC USER
	 * -> SEARCH USER BY PRG
	 * 
	 */
	
	
	//SQL query for insert
	private static final String INSERT_USER = "INSERT INTO users (prg, password) VALUES (?, ?);";
	
	//SQL query for selecting a specific user
	private static final String SELECT_USER_BY_PRG = "SELECT * FROM users WHERE prg = ? LIMIT 1;";
	
	//SQL query for selecting all users
	private static final String SELECT_ALL_USERS = "SELECT * FROM users LIMIT 12;";
	
	//SQL query for deleting a specific user
	private static final String DELETE_USER_BY_PRG = "DELETE FROM users WHERE prg = ?;";
	
	//SQL query for update user password
	private static final String UPDATE_PASSWORD_BY_PRG = "UPDATE users SET password = ? WHERE prg = ?;";
	
	//SQL query for user validation
	private static final String VALIDATE_USER_BY_PRG_AND_PASSWORD = "SELECT * FROM USERS WHERE prg = ? AND password  = ?;";
	
	//SQL query for search user
	private static final String SEARCH_USER_BY_PRG = "SELECT * FROM USERS WHERE prg LIKE ? LIMIT 12;";
	
	
	/*
	 * DATA ACCESS FUNCTIONS
	 * 
	 * insertUser() -> @returns true or false if inserted
	 * selectUser() -> @return User object of selectedUser
	 * selectAllUsers() -> @ returns List of User objects
	 * deleteUser() -> @ returns true or false if deleted
	 * updateUser() -> @returns if true or false if row updated
	 * validateUser() -> @returns the user object if exists else null
	 * 
	 */
	
	//Function to insert a specific user to the database
	public static boolean insertUser (User user)
	{
		int noOfRowsUpdated = 0;
		
		try {
		conn = DBConnection.getConnection();
		
		PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(INSERT_USER);
		preparedStatement.setString(1, user.getPrg());
		preparedStatement.setString(2, user.getPassword());
		
		//executeUpdate() returns number of records updated in database
		//as it is an insert only 1 record has to be updated  in the database
		noOfRowsUpdated = preparedStatement.executeUpdate();
		
		// If returns 1 then successfully inserted else not inserted
		if(noOfRowsUpdated > 0)
			return true;
		else
			return false;
		
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//Function to select and return specific user from the database
	public static User selectUser(String prg)
	{
		
		User user = new User();
		
		try {
			conn = DBConnection.getConnection();
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(SELECT_USER_BY_PRG);
			preparedStatement.setString(1, prg);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				user.setPrg(rs.getString("prg"));
				user.setPassword(rs.getString("password"));
			}
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		return user;
	}
	
	//Function to select all the users in the database and return
	
	public static ArrayList<User> selectAllUsers()
	{
		ArrayList<User> userList = new ArrayList<User>();
		
		try {
			conn = DBConnection.getConnection();
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(SELECT_ALL_USERS);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				String prg = rs.getString("prg");
				String password = rs.getString("password");
				User user = new User(prg,password);
				userList.add(user);
			}
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		return userList;
	}
	
	//Function to delete a user from the database
	public static boolean deleteUser (String prg)
	{
		int noOfRowsUpdated = 0;
		
		try {
			conn = DBConnection.getConnection();
			
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(DELETE_USER_BY_PRG);
			preparedStatement.setString(1, prg);
			
			noOfRowsUpdated = preparedStatement.executeUpdate();
			
			if(noOfRowsUpdated > 0)
				return true;
			else
				return false;
		
		} catch (SQLException e)
		{
			e.printStackTrace();
			return false;
		}
		
	}
	
	//Function to update a specific user from the database
	public static boolean updateUser (User user)
	{
		int noOfRowsUpdated = 0;
		
		try {
		conn = DBConnection.getConnection();
		
		PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(UPDATE_PASSWORD_BY_PRG);
		preparedStatement.setString(1, user.getPassword());
		preparedStatement.setString(2, user.getPrg());
		
		//executeUpdate() returns number of records updated in database
		noOfRowsUpdated = preparedStatement.executeUpdate();
		
		// If returns number greater than 0 then successfully inserted
		if(noOfRowsUpdated > 0)
			return true;
		else
			return false;
		
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean validateUser (User user)
	{
		try {
			conn = DBConnection.getConnection();
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(VALIDATE_USER_BY_PRG_AND_PASSWORD);
			preparedStatement.setString(1, user.getPrg());
			preparedStatement.setString(2, user.getPassword());
			ResultSet rs = preparedStatement.executeQuery();
			
			if(!rs.next())
				return false;
			else
				return true;
		} catch (SQLException e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	public static ArrayList<User> searchUser (String query) {
		
		ArrayList<User> userList = new ArrayList<User>();
		
		try {
			conn = DBConnection.getConnection();
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(SEARCH_USER_BY_PRG);
			preparedStatement.setString(1, "%"+query+"%");
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				String password = rs.getString("password");
				String username = rs.getString("prg");
				User user = new User(username,password);
				userList.add(user);
			}
			
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return userList;
	}
}
