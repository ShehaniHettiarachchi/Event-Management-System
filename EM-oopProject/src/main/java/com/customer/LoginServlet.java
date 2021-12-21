package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catch customer login details from the Login.jsp
		String cusname = request.getParameter("cusname");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		boolean isTrue;
		isTrue = CustomerDBUtil.validate(cusname, password);
		
		System.out.println("working");
		
		if(isTrue == true) {
			out.println("Customer Name="+cusname+"\nCustomer Password="+password);
			
			
			HttpSession session = request.getSession();
			session.setAttribute("login", cusname);
			//If Login is success ,navigate to the Customer Profile page
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomer(cusname);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
			
		}else {
			//if Login is not success display error message and navigate to the login page
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect')");
			out.println("location = 'Login.jsp'");
			out.println("</script>");
		}
		
		
	}

}
