package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import service.util.*;

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

public static List<Customer> getAllCustomer(){
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from customer";
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