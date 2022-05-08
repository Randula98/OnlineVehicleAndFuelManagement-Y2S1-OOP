package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerUpdateServlet
 */
@WebServlet("/CustomerUpdateServlet")
public class CustomerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String id = request.getParameter("id");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String conNo=request.getParameter("conNo");
		String mail=request.getParameter("mail");
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		boolean isTrue=false;
		
		isTrue=CustomerDBUtil.updateCustomer(id, fname, lname, conNo, mail, uname, pwd);
		
		if(isTrue==true) {
			RequestDispatcher res=request.getRequestDispatcher("cusDash.jsp");
			res.forward(request, response);
		}else {
			RequestDispatcher res=request.getRequestDispatcher("cusDash.jsp");
			res.forward(request, response);
		}
	}

}
