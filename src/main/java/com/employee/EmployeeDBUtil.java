package com.employee;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;  //Importing Packages
import java.util.ArrayList;
import java.util.List;

import service.util.DBConnect;

public class EmployeeDBUtil {
	
	private static boolean isSuccess;
	private static Connection conn=null;
	private static Statement state =null;
	private static ResultSet rs=null;
	
	public static boolean validate (String username,String password) {
		
		try {
			
			conn = DBConnect.getConnection();
			state=conn.createStatement();
			String sql = "select * from employee where username = '" + username + "' and password = '" + password + "'";
			rs=state.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception X) {
			
			X.printStackTrace();
			
		}
		return isSuccess;
	}
	
	public static List<Employee> getEmployee(String username){
		
		ArrayList<Employee> employee=new ArrayList<>();
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from employee where username ='"+username+"'";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id=rs.getInt(1);
				String firstName=rs.getString(2);
				String lastName=rs.getString(3);
				String contactNo=rs.getString(4);
				String role =rs.getString(5);
				double salary=rs.getDouble(6);
				String uname=rs.getString(7);
				String pwd=rs.getString(8);
				
				Employee emp = new Employee(id,firstName,lastName,contactNo,role,salary,uname,pwd);
				employee.add(emp);
			}
		}catch (Exception X) {
			X.printStackTrace();
		}
		return employee;
	}
	
	public static List<Employee> getAllEmployee(){
		
		ArrayList<Employee> employees = new ArrayList<>();
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			
			String sql = "select * from employee";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				
				int id=rs.getInt(1);
				String firstName=rs.getString(2);
				String lastName=rs.getString(3);
				String contactNo=rs.getString(4);
				String role =rs.getString(5);
				double salary=rs.getDouble(6);
				String uname=rs.getString(7);
				String pwd=rs.getString(8);
				
				Employee emp = new Employee(id,firstName,lastName,contactNo,role,salary,uname,pwd);
				employees.add(emp);
			}
		}catch (Exception X) {
			X.printStackTrace();
		}
		return employees;
	}
	
	public static boolean deleteEmployee(String id) {
		
		System.out.println(id);
		int empid = Integer.parseInt(id);
		
		System.out.println("In the db util");
		System.out.println(empid);
		
		try {
			System.out.println("hello");
			System.out.println("In the try");
			conn = DBConnect.getConnection();
			state=conn.createStatement();
			String sql = "delete from employee where employeeID = '" + empid + "'";
			int result = state.executeUpdate(sql);
			System.out.println(result);
			if(result > 0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception X) {
			
			X.printStackTrace();
			
		}
		
		return isSuccess;
	}
}
