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

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String employee = null;
		String customer = null;
		String supplier = null;
		boolean isTrue = false;
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		employee = request.getParameter("employee");
		customer = request.getParameter("customer");
		supplier = request.getParameter("supplier");
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		out.println("<script type='text/javascript'>");
		out.println("alert('Logged in');");
		out.println("</script>");
		
		if(employee != null)
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Employee');");
			out.println("location='index.jsp'");
			out.println("</script>");
		}
		else if(customer != null)
		{
			isTrue = CustomerDBUtil.validate(username, password);
			
			if (isTrue == true) {
				List<Customer> cusDetails = CustomerDBUtil.getCustomer(username);
				request.setAttribute("cusDetails", cusDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("customeraccount.jsp");
				dis.forward(request, response);
			} else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='index.jsp'");
				out.println("</script>");
			}
		}
		else if(supplier != null)
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Supplier');");
			out.println("location='index.jsp'");
			out.println("</script>");
		}
				
//		
//		isTrue = CustomerDBUtil.validate(username, password);
//		
//		if (isTrue == true) {
//			List<Customer> cusDetails = CustomerDBUtil.getCustomer(username);
//			request.setAttribute("cusDetails", cusDetails);
//			
//			RequestDispatcher dis = request.getRequestDispatcher("customeraccount.jsp");
//			dis.forward(request, response);
//		} else {
//			out.println("<script type='text/javascript'>");
//			out.println("alert('Your username or password is incorrect');");
//			out.println("location='index.jsp'");
//			out.println("</script>");
//		}
	}

}
