package com.appointment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AppointmentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		String id = request.getParamter("id");
		boolean isTrue;
		
		isTrue = AppointmentDBUtil.deleteAppointment(id);
		
		if(isTrue ==true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("cusDash.jsp");
			dispatcher.forward(request, response);
		}else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("cusDash.jsp?status=failed");
		}
	}
}
