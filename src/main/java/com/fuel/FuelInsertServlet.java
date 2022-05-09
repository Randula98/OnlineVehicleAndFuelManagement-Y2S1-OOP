package com.fuel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.EmployeeDBUtil;

/**
 * Servlet implementation class FuelInsertServlet
 */
@WebServlet("/FuelInsertServlet")
public class FuelInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FuelInsertServlet() {
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
		
		String fType = request.getParameter("fueltype");
		String amount = request.getParameter("amount");
		String vehicleNo = request.getParameter("vehicleNo");
		String cDate = request.getParameter("date");
		String vType = request.getParameter("vehicleType");
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = EmployeeDBUtil.insertEmployee(firstName,lastName,contactNo,role,salary,username,password);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("home.jsp");
			dis2.forward(request, response);
		}
	}

}
