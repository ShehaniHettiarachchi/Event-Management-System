package com.attendee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteAttendeeServlet")
public class DeleteAttendeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catch attid from DeleteAttendee page
		String attid = request.getParameter("attid");
		
		boolean isTrue;
		
		isTrue = AttendeeDBUtil.deleteattendee(attid);
		
		if(isTrue== true) {
			List<Attendee> AttDetails = AttendeeDBUtil.getView();
			request.setAttribute("AttDetails", AttDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Attendee-List.jsp");
			dis.forward(request, response);
		}else {
			List<Attendee> AttDetails = AttendeeDBUtil.getView();
			request.setAttribute("AttDetails", AttDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Attendee-List.jsp");
			dis.forward(request, response);
		}
	}

}
