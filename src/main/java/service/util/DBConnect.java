package service.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://d3e9b090/heroku_b40cf61c0d50d2b";
	private static String username = "ba02b2f2073c82";
	private static String password = "d3e9b090";
	private static Connection conn;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, username, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return conn;
	}
}
