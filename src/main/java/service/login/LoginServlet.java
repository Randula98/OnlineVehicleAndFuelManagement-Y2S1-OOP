package service.login;

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

import com.customer.Customer;
import com.customer.CustomerDBUtil;

import com.employee.Employee;
import com.employee.EmployeeDBUtil;
import com.supplier.Supplier;
import com.supplier.SupplierDBUtil;
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
		
		HttpSession session = request.getSession(true);
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		out.println("<script type='text/javascript'>");
		out.println("alert('Logged in');");
		out.println("</script>");
		//Done by Leo
		if(employee != null)
		{
			isTrue = EmployeeDBUtil.validate(username, password);
			
			
			if (isTrue == true) {
				List<Employee> empDetails = EmployeeDBUtil.getEmployee(username);
				request.setAttribute("empDetails", empDetails);
				
				//Must Ask how its being done
				
				session.setAttribute("Empname", username);
				
				RequestDispatcher dis = request.getRequestDispatcher("empDash.jsp");
				dis.forward(request, response);
			} else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='login.jsp'");
				out.println("</script>");
			
			}
		} // until here
		else if(customer != null)
		{
			isTrue = CustomerDBUtil.validate(username, password);
			
			if (isTrue == true) {
				List<Customer> cusDetails = CustomerDBUtil.getCustomer(username);
				request.setAttribute("cusDetails", cusDetails);
				
				session.setAttribute("Susername", username);
				
				
				RequestDispatcher dis = request.getRequestDispatcher("cusDash.jsp");
				dis.forward(request, response);
			} else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='login.jsp'");
				out.println("</script>");
			}
		}
		else if(supplier != null)
		{
			isTrue = SupplierDBUtil.validate(username, password);
			if(isTrue == true) {
				List<Supplier> supDetails = SupplierDBUtil.getSupplier(username);
				request.setAttribute("supDetails", supDetails);
				
				session.setAttribute("supName", username);
				
				RequestDispatcher dis = request.getRequestDispatcher("supDash.jsp");
				dis.forward(request, response);
			}
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Login no');");
				out.println("location='login.jsp'");
				out.println("</script>");
			}
		}
	}
}
