package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	public static boolean validate (String username , String password){
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "select * from customer where username = '" + username + "' and password = '" + password + "'";
			rs = state.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Customer> getCustomer(String username){
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from customer where username = '" + username + "'";
			rs = state.executeQuery(sql);
			
			while (rs.next()) {
				
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String contact = rs.getString(4);
				String email = rs.getString(5);
				String uname = rs.getString(6);
				String pword = rs.getString(7);
				
				Customer c = new Customer(id , firstName , lastName , contact , email , uname , pword);
				customer.add(c);
			}
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return customer;
	}

}

/*
ArrayList<Customer> cus = new ArrayList<>();

//create database
String url = "jdbc:mysql://localhost:3306/ezvehicare";
String user = "root";
String pass = "1234567890";

//validate
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = DriverManager.getConnection(url , user , pass);
	Statement state = conn.createStatement();
	
	String sql = "select * from customer where username = '" + userName + "' and password = '" + password +"'";
	ResultSet rs = state.executeQuery(sql);
	
	if (rs.next()) {
		
		int id = rs.getInt(0);
		String firstName = rs.getString(1);
		String lastName = rs.getString(2);
		String contact = rs.getString(3);
		String email = rs.getString(4);
		String uname = rs.getString(5);
		String pword = rs.getString(6);
		
		Customer c = new Customer(id , firstName , lastName , contact , email , uname , pword);
		cus.add(c);
	}
	
	
} catch (Exception e) {
	// TODO: handle exception
}
	
return cus;
*/