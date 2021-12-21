package com.attendee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RetrieveAttendeesServlet")
public class RetrieveAttendeesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		boolean isTrue=AttendeeDBUtil.ViewAllAttendees();
		
		if(isTrue==true) {
					

					List<Attendee>AttDetails=AttendeeDBUtil.getView();	
					request.setAttribute("AttDetails",AttDetails);
					
					
					RequestDispatcher dis=request.getRequestDispatcher("Attendee-List.jsp");
					dis.forward(request, response);
					
				}
				
				else {
				
				}
	}

}
