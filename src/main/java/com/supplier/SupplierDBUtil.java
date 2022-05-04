package com.supplier;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Customer;

import service.util.DBConnect;

public class SupplierDBUtil {
  private static boolean isSuccess;
  private static Connection conn = null;
  private static Statement state = null;
  private static ResultSet rs =null;
  
  public static boolean validate(String username,String password) {
	  
	  try {
		conn = DBConnect.getConnection();
		state = conn.createStatement();
		String sql = "select * from supplier where username = '" + username + "' and password = "+ password + "'";
		rs = state.executeQuery(sql);
		
		if(rs.next()) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	  return isSuccess;
  }
  public static List<Supplier> getSupplier(String username){
	  ArrayList<Supplier> supplier= new ArrayList<>();
	  
	  try {
		  conn = DBConnect.getConnection();
		  state = conn.createStatement();
		  String sql = "select * from supplier where username = '" + username + "'";
	      rs = state.executeQuery(sql);
	      
	      while(rs.next()) {
	    	  int id = rs.getInt(1);
	    	  String companyName = rs.getString(2);
	    	  String branch = rs.getString(3);
	    	  String contactNo = rs.getString(4);
	    	  String userName = rs.getString(5);
	    	  String password = rs.getString(6);
	    	  
	    	  Supplier s = new Supplier(id, companyName,branch,contactNo,userName,password);
	    	  supplier.add(s);
	    	  
	      }
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	  return supplier;
  }
   public static List<Supplier> getAllSupplier(){
	   
	   ArrayList<Supplier> supplier= new ArrayList<>();
	   
	   try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from supplier";
			rs = state.executeQuery(sql);
			
			while (rs.next()) {
				
				int id = rs.getInt(1);
		    	  String companyName = rs.getString(2);
		    	  String branch = rs.getString(3);
		    	  String contactNo = rs.getString(4);
		    	  String userName = rs.getString(5);
		    	  String password = rs.getString(6);
		    	  
		    	  Supplier s = new Supplier(id, companyName,branch,contactNo,userName,password);
		    	  supplier.add(s);
			}
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return supplier;
	}
   
}