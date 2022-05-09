package com.appointment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import service.util.DBConnect;

public class AppointmentDBUtil {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	
	public static boolean deleteAppointment(String id) {
		
		int conId=Integer.parseInt(id);
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "delete from appointment where appointmentID='"+conId+"'";
			
			int r = state.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception X) {
			X.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean addappointment(String id,String serve,String date) {
		
		boolean isSuccess = false;
		
		try {
				conn = DBConnect.getConnection();
				state = conn.createStatement();
				String sql = "insert into appointment values(0,'"+serve+"','"+date+"','"+id+"')";
				int rs = state.executeUpdate(sql);
				if(rs>0) {
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
