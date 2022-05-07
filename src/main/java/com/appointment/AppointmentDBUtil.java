package com.appointment;

import java.sql.Connection;

import java.sql.Statement;

import service.util.DBConnect;

public class AppointmentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	
	
	public static boolean deleteAppointment(String id) {
		
		int conId=Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from appointment where appointmentID='"+conId+"'";
			int r = stmt.executeUpdate(sql);
			
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
}
