package com.sussex.payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;
import com.sussex.database.DBConnection;
import com.sussex.user.User;

/*
 * 
 * This is the class which is used to access the payment related data in the database
 * This class will interact with the database connector using JDBC --> DBConnection in com.sussex.database to interact with 
 * It will contain the functions which will be needed to perform CRUD operations
 * 
 */

public class PaymentDAO {


	private static Connection conn;
	
	/*
	 * Query List
	 * 
	 * -> INSERT PAYMENT
	 * -> SELECT SPECIFIC PAYMENT BY PRG
	 * -> SELECT ALL PAYMENTS
	 * -> DELETE SPECIFIC PAYMENT
	 * 
	 */
	
	//SQL query for insert
	private static final String REGISTER_PAYMENT = "INSERT INTO payment_slip (prg, fullname, initials, bankreference, branch, paymentfor, additionalnote, imagefilepath) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
	
	//SQL query for selecting a specific payment by bank reference
	private static final String SELECT_PAYMENT_BY_BANKREF = "SELECT * FROM payment_slip WHERE bankreference = ? LIMIT 1;";
	
	//SQL query for retrieving all payments
	private static final String SELECT_ALL_PAYMENTS = "SELECT * FROM payment_slip ORDER BY submissiondate DESC LIMIT 12;";
	
	//SQL query to remove payment by bank reference
	private static final String DELETE_PAYMENT_BY_BANKREF = "DELETE FROM payment_slip WHERE bankreference = ?;";
	
	//SQL query to search payment by PRG
	private static final String SEARCH_PAYMENT_BY_PRG = "SELECT * FROM payment_slip WHERE prg LIKE ? ORDER BY submissiondate DESC LIMIT 12;";
	
	
	/*
	 * DATA ACCESS FUNCTIONS
	 * 
	 * insertPayment() -> @returns true or false if inserted
	 * selectPayment() -> @return User object of selectedUser
	 * selectAllPayments() -> @ returns List of User objects
	 * deletePayment() -> @ returns true or false if deleted
	 * searchPayment() -> @ returns list of payments
	 */
	
	
	public static boolean insertPayment(Payment payment)
	{
		int noOfRowsUpdated = 0;
		
		try {
		conn = DBConnection.getConnection();
		
		PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(REGISTER_PAYMENT);
		preparedStatement.setString(1, payment.getPrg());
		preparedStatement.setString(2, payment.getFullName());
		preparedStatement.setString(3, payment.getNameWithInitials());
		preparedStatement.setString(4, payment.getBankReference());
		preparedStatement.setString(5, payment.getBranch());
		preparedStatement.setString(6, payment.getPaymentFor());
		preparedStatement.setString(7, payment.getAddtionalNote());
		preparedStatement.setString(8, payment.getImage());
		
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
	
	public static Payment selectPayment(String bankRef)
	{
		Payment payment = new Payment();
		
		try {
			conn = DBConnection.getConnection();
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(SELECT_PAYMENT_BY_BANKREF);
			preparedStatement.setString(1, bankRef);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				payment.setPrg(rs.getString("prg"));
				payment.setFullName(rs.getString("fullname"));
				payment.setNameWithInitials(rs.getString("initials"));
				payment.setBranch(rs.getString("branch"));
				payment.setBankReference(bankRef);
				payment.setPaymentFor(rs.getString("paymentfor"));
				payment.setAddtionalNote(rs.getString("additionalnote"));
			}
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		return payment;
	}
	
	public static ArrayList<Payment> selectAllPayments()
	{
		ArrayList<Payment> paymentsList = new ArrayList<Payment>();
		
		try {
			conn = DBConnection.getConnection();
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(SELECT_ALL_PAYMENTS);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
							
				Payment payment = new Payment();
				payment.setPrg(rs.getString("prg"));
				payment.setFullName(rs.getString("fullname"));
				payment.setNameWithInitials(rs.getString("initials"));
				payment.setBranch(rs.getString("branch"));
				payment.setBankReference(rs.getString("bankreference"));
				payment.setPaymentFor(rs.getString("paymentfor"));
				payment.setAddtionalNote(rs.getString("additionalnote"));
				payment.setImage(rs.getString("imagefilepath"));
				paymentsList.add(payment);
				
			}
			
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return paymentsList;
	}
	
	public static boolean deletePayment(String bankReference)
	{
		int noOfRowsUpdated = 0;
		
		try {
			conn = DBConnection.getConnection();
			
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(DELETE_PAYMENT_BY_BANKREF);
			preparedStatement.setString(1, bankReference);
			
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
	
	public static ArrayList<Payment> searchPayment(String prg)
	{
		ArrayList<Payment> paymentsList = new ArrayList<Payment>();
		
		try {
			conn = DBConnection.getConnection();
			
			PreparedStatement preparedStatement = (PreparedStatement) conn.prepareStatement(SEARCH_PAYMENT_BY_PRG);
			preparedStatement.setString(1,"%" + prg + "%");
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
							
				Payment payment = new Payment();
				payment.setPrg(rs.getString("prg"));
				payment.setFullName(rs.getString("fullname"));
				payment.setNameWithInitials(rs.getString("initials"));
				payment.setBranch(rs.getString("branch"));
				payment.setBankReference(rs.getString("bankreference"));
				payment.setPaymentFor(rs.getString("paymentfor"));
				payment.setAddtionalNote(rs.getString("additionalnote"));
				payment.setImage(rs.getString("imagefilepath"));
				paymentsList.add(payment);
				
			}
			
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return paymentsList;
	}
	
}
