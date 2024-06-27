package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
	
//	// connection username
//		private static final String USERNAME = "root";
//		// connection password
//		private static final String PASSWORD = "123456";
//		private static final String CONN_STRING = "jdbc:mysql://localhost:3306/phoneguard";

	
	private static Connection conn;
	public static Connection getConn() {
		
		try {
			
			if(conn==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
//			conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);

			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phoneguard", "root", "123456");
			}
			
		}catch ( SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		
		return conn;
	}

}
