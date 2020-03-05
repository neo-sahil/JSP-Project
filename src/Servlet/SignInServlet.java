package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import employee.Emp;
import employee.EmpDao;


@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password1 = request.getParameter("password1");
		
		Emp e = EmpDao.check(email, password1);
		
		String password2 = e.getPassword1();
		//System.out.println(e.getGender());
		
		if(password1.equals(password2))
		{
			HttpSession session = request.getSession();
			session.setAttribute("firstname", e.getFirstname());
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("SignIn.jsp");
		}
	}

}
