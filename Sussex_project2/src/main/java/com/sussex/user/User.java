package com.sussex.user;

/*
 * 
 * This is the class which is used to model the fields in the database
 * Contains setters and getters
 * 
 */

public class User {
	private String prg;
	private String password;
	
	public User() {};
	
	public User(String prg, String password) {
		super();
		this.prg = prg;
		this.password = password;
	}
	
	public String getPrg() {
		return prg;
	}
	public void setPrg(String prg) {
		this.prg = prg;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
