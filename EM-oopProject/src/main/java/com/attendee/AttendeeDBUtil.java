package com.attendee;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AttendeeDBUtil {

	//Instance variables
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Attendee
	public static boolean insertattendee(String attname, String email, String nic, String mobile, String affillation) {
    	
    	boolean isSuccess = false;
    	
    	System.out.println("1");
    	try {
    		//DBconnection
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		//sql statement
    	    String sql = "insert into attendees  values (0,'"+attname+"','"+email+"','"+nic+"','"+mobile+"','"+affillation+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		System.out.println("name");
    		
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
	
	
	//Retrieve All Attendee details by cusID
	public static boolean ViewAllAttendees(){
		
		
		
		try {
			//DBconnection
			Class.forName("com.mysql.jdbc.Driver");
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			String sql="select attid,attname,email,nic,mobile,affillation from attendees";
			rs=stmt.executeQuery(sql);
			
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
	//Retrieve
	public static List<Attendee> getView(){
		
		
		ArrayList<Attendee> att=new ArrayList<>();
		   
		
		try {
			//connection
			con= DBConnection.getConnection();
			stmt = con.createStatement();
			//sql query
			String sql = "select attid,attname,email,nic,mobile,affillation from attendees";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int attid=rs.getInt(1);
				String attname=rs.getString(2);
				String email=rs.getString(3);
				String nic=rs.getString(4);
				String mobile=rs.getString(5);
				String affillation=rs.getString(6);
				
				
				Attendee attendee=new Attendee(attid,attname,email,nic,mobile,affillation);
				
				att.add(attendee);
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return att;
		
	}
	
	//retrieve attendee details by id
	public static List<Attendee> getAttendeeDetails(String attid) {
    	
    	int convertedID = Integer.parseInt(attid);
    	
    	ArrayList<Attendee> att = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		String sql = "select attid,attname,email,nic,mobile,affillation from attendees where attid='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int attID = rs.getInt(1);
    			String attname = rs.getString(2);
    			String email = rs.getString(3);
    			String nic = rs.getString(4);
    			String mobile = rs.getString(5);
    			String affillation = rs.getString(6);
    			
    			Attendee attendee = new Attendee(attID,attname,email,nic,mobile,affillation);
    			att.add(attendee);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return att;	
    }
	
	//Update attendee details
	public static boolean updateattendee(String attid,String attname,String email,String nic,String mobile,String affillation) {
		
		try {
			
			//DBconnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//sql query
			String sql = "update attendees set attname='"+attname+"',email='"+email+"',nic='"+nic+"',mobile='"+mobile+"',affillation='"+affillation+"'"+
							" where  attid='"+attid+"'";
			int rs = stmt.executeUpdate(sql);
			
			//condition for check whether update is success or not
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//delete attendee
	public static boolean deleteattendee(String attid) {
		
		//convert string to int
		int convID = Integer.parseInt(attid);
		
		try {
			//DBconnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//sql statement
			String sql = "delete from attendees where attid='"+convID+"'";
			int rs = stmt.executeUpdate(sql);
			
			//check whether delete success or not
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}

