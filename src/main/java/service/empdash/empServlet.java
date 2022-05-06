package service.empdash;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employee.Employee;
import com.employee.EmployeeDBUtil;

/**
 * Servlet implementation class empServlet
 */
@WebServlet("/empServlet")
public class empServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public empServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
				//String action = request.getServletPath();
				
				try {
					List<Employee> listEmployee = EmployeeDBUtil.getAllEmployee();
					request.setAttribute("listEmployee", listEmployee);
					RequestDispatcher dispatcher = request.getRequestDispatcher("empDash.jsp");
					dispatcher.forward(request, response);
					
				} 
				catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
	}

}
