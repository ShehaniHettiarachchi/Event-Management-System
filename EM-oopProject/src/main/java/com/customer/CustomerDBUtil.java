package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.attendee.DBConnection;

public class CustomerDBUtil {
	
		//Instance variables
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//validate method
		public static boolean validate(String cusname,String password) {
			
			try {
				
				//DBconnection
				Class.forName("com.mysql.jdbc.Driver");
	    		con = DBConnection.getConnection();
	    		stmt = con.createStatement();
	    		
	    		//sql query
	    		String sql = "select * from customer where cusname='"+cusname+"'AND password='"+password+"' ";
				rs = stmt.executeQuery(sql);
				
				//condition for check whether the user is valid user or not
				if(rs.next()) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		}
		
		//fetch list of customer details
		public static List<Customer> getCustomer(String cusname){
			ArrayList<Customer> customer = new ArrayList<>();
			
			try {
				//DBconnection
	    		con = DBConnection.getConnection();
	    		stmt = con.createStatement();
	    		
	    		//query
	    		String sql = "select * from customer where cusname='"+cusname+"'";
	    		
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int cusid = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String password = rs.getString(3);
	    			String email = rs.getString(4);
	    			String phone = rs.getString(5);
	    			String nic = rs.getString(6);
	    			
	    			Customer cus = new Customer(cusid,name,password,email,phone,nic);
	    			customer.add(cus);
	    		}
	    		
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return customer;
		}
		
		//Insert Customer
		public static boolean insertcustomer(String cusname, String password, String email, String phone, String nic) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = DBConnection.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into customer values (0,'"+cusname+"','"+password+"','"+email+"','"+phone+"','"+nic+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
		
		//Update Customer Details
		public static boolean updatecustomer(String cusid, String cusname, String password, String email, String phone, String nic) {
	    	
	    	try {
	    		
	    		con = DBConnection.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update customer set cusname='"+cusname+"',password='"+password+"',email='"+email+"',phone='"+phone+"',nic='"+nic+"'"
	    				+ "where cusid='"+cusid+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
		
		//Retrieve customer details
		public static List<Customer> getCustomerDetails(String cusid) {
	    	
			//Convert String to int
	    	int convertedID = Integer.parseInt(cusid);
	    	
	    	ArrayList<Customer> cus = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnection.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from customer where cusid='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String cusname = rs.getString(2);
	    			String password = rs.getString(3);
	    			String email = rs.getString(4);
	    			String phone = rs.getString(5);
	    			String nic = rs.getString(6);
	    			
	    			Customer c = new Customer(id,cusname,password,email,phone,nic);
	    			cus.add(c);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return cus;	
	    }
		
		//Delete Customer 
		public static boolean deleteCustomer(String cusid) {
	    	
	    	int convId = Integer.parseInt(cusid);
	    	
	    	try {
	    		
	    		con = DBConnection.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from customer where id='"+convId+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	    
}
