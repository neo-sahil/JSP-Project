package Servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employee.*;


@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String firstname = request.getParameter("uname1");
		String surname = request.getParameter("uname2");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		String gender = request.getParameter("gender");
		
		if(!(password1.equals(password2)))
		{
			int s = 1;
			//boolean s = true;
			response.sendRedirect("SignUp.jsp?s="+s);
			//request.setAttribute("s", s);
			//request.getRequestDispatcher("SignUp.jsp").include(request, response);
		}
		Emp e = new Emp();
		
		e.setFirstname(firstname);
		e.setSurname(surname);
		e.setMobile(mobile);
		e.setEmail(email);
		e.setPassword1(password1);
		e.setGender(gender);
		
		int status = EmpDao.save(e);
		if(status > 0)
		{
			request.getRequestDispatcher("SignUp2.jsp").forward(request, response);
		}
		else
		{
			response.sendRedirect("SignUp.jsp");
		}
		
	}//end of doPost

}//end of class
