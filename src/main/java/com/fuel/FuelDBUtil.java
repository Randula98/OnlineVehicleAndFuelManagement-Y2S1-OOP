package com.fuel;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import service.util.DBConnect;

public class FuelDBUtil {

	private static boolean isSuccess;
	private static Connection conn=null;
	private static Statement state =null;
	private static ResultSet rs=null;
	
	public static boolean insertFuel(String fType , String amount , String vno , String cDate , String vType , String cid) {
		
		boolean isSuccess = false;
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "insert into employee values (0,'"+fType+"','"+amount+"','"+vno+"','"+cDate+"','"+vType+"')";
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
