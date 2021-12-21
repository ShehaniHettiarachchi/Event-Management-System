package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cusid = request.getParameter("cusid");
		String attname = request.getParameter("attname");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		String mobile = request.getParameter("mobile");
		String affillation = request.getParameter("affillation");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatecustomer(cusid, attname, email, nic, mobile, affillation);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(cusid);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(cusid);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
		}
	}
	

}
