package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	public static List<Customer> validate (String userName , String password){
		
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

	}

}
