package com.attendee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertAttendeeServlet")
public class InsertAttendeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		

		String attname = request.getParameter("attname");  
		String email = request.getParameter("email");  
		String nic = request.getParameter("nic"); 
		String mobile = request.getParameter("mobile"); 
		String affillation = request.getParameter("affillation");
		
		boolean isTrue;
		
		isTrue = AttendeeDBUtil.insertattendee(attname, email, nic, mobile,affillation);
		
		System.out.println("123");
		if (isTrue == true) {
			
			List<Attendee> AttDetails = AttendeeDBUtil.getView();
			request.setAttribute("AttDetails", AttDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Attendee-List.jsp");
			dis.forward(request, response);
		}
		
		else {
			List<Attendee> AttDetails = AttendeeDBUtil.getView();
			request.setAttribute("AttDetails", AttDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Attendee-List.jsp");
			dis.forward(request, response);
			
		}
	}	

}
