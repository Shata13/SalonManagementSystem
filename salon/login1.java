import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
public class signup extends HttpServlet
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		response.setContentType("html/html");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("email");
		String password=request.getParameter("password");
		if(validate.checkUser(email, password))
		{
			RequestDispatcher rs = request.getRequestDispatcher("booking.html");
			rs.forward(request, response);
		}
		else
		{
			out.println("Username or Password incorrect");
			RequestDispatcher rs = request.getRequestDispatcher("login1.html");
			rs.include(request, response);
		}
	}
}