package com.employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeDeleteServlet
 */
@WebServlet("/EmployeeDeleteServlet")
public class EmployeeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeDeleteServlet() {
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
		System.out.println(request.getParameter("hiddenID"));
		String id = request.getParameter("hiddenID");
		System.out.println(id);
		boolean isTrue = false;
		System.out.println(isTrue);
		isTrue = EmployeeDBUtil.deleteEmployee(id);
		
		System.out.println(isTrue);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("empDash.jsp?status=passed");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("empDash.jsp?status=failed");
			dispatcher.forward(request, response);
		}
		
	}

}
