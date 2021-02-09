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
		String name=request.getParameter("name");
		String phonenumber=request.getParameter("phonenumber");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String conpassword=request.getParameter("conpassword");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/salondb","root","");
			PreparedStatement st=con.prepareStatement("insert into customer values(?,?,?,?,?,?)");
			st.setString(1,name);
			st.setString(2,phonenumber);
			st.setString(3,address);
			st.setString(4,email);
			st.setString(5,password);
			st.setString(6,conpassword);
				
		
		}
	
		catch(Exception e)
		{
			out.println(e);
		}
		out.println("registered successfully");
}
}