package com.item;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import service.util.DBConnect;

public class ItemDBUtil {
	
	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement state = null;
	private static ResultSet rs = null;

	public static boolean deleteItem(String id) {
		System.out.println(id);
		int itemid = Integer.parseInt(id);
		
		System.out.println("In the db util");
		System.out.println(itemid);
		
		try {
			System.out.println("hello");
			System.out.println("In the try");
			conn = DBConnect.getConnection();
			state=conn.createStatement();
			String sql = "delete from item where itemID = '" + itemid + "'";
			String sql2 = "delete from customer_item where itemID = '" + itemid + "'";
			int result2 = state.executeUpdate(sql2);
			int result = state.executeUpdate(sql);//12
			System.out.println(result);
			if(result > 0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception X) {
			
			X.printStackTrace();
			
		}
		return isSuccess;// TODO Auto-generated method stub
	}
	
    public static boolean insertItem(String item,double price,int quantity,int supID){
		
		boolean isSuccess = false;
		
		try {
			
			conn = DBConnect.getConnection();
			state = conn.createStatement();
			String sql = "insert into item values (0,'"+item+"','"+price+"','"+supID+"','"+quantity+"')";
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
 

