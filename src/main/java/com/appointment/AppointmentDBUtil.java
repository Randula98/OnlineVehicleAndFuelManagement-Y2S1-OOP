package com.appointment;

import java.sql.Connection;

import java.sql.Statement;

import service.util.DBConnect;

public class AppointmentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement state = null;
	
	
	public static boolean deleteAppointment(String id) {
		
		int conId=Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
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
}
