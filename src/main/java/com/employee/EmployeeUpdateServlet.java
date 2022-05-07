package com.employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeUpdateServlet
 */
@WebServlet("/EmployeeUpdateServlet")
public class EmployeeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeUpdateServlet() {
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
		
		String id = request.getParameter("empID");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String cno = request.getParameter("contactno");
		String role = request.getParameter("role");
		String salary = request.getParameter("salary");
		String username = request.getParameter("username");
		
		boolean isTrue = false;
		
		isTrue = EmployeeDBUtil.updateEmployee(id, fname, lname, cno, role, salary, username);
		System.out.println(isTrue);
		System.out.println(id);
		System.out.println(fname);
		System.out.println(lname);
		System.out.println(cno);
		System.out.println(role);
		System.out.println(salary);
		System.out.println(username);
		//132654
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("empdashemplist.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("empdashemplist.jsp");
			dis.forward(request, response);
		}
	}

}
