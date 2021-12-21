package com.attendee;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	//variables
			private static String URL = "jdbc:mysql://localhost:3306/eventmanagement";
			private static String userName  = "root";
			private static String password = "123456789";
			
			private static Connection con;//con variable use for return DB connection
			
			//database connection
			public static Connection getConnection() {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					
					con = DriverManager.getConnection(URL, userName, password);
					
					
				}catch(Exception e) {
					System.out.println("Databse connection is not success!!!");
				}
				return con;
				
			}
}
