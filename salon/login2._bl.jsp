<html>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");

String username=request.getParameter("username");
String password=request.getParameter("password");

PreparedStatement st=con.prepareStatement("select * from reg where email=? and password=?");

st.setString(1,username);
st.setString(2,password);

ResultSet rs=st.executeQuery();

if (rs.next())
{
	session.setAttribute("email",username);
	session.setAttribute("name",rs.getString(2));

  response.sendRedirect("test1.html");
}
else
{
	 %>
			 <script>
			 alert("username or password was wrong");
			 window.location.href='login1_bl.html';
			 </script>
			 <%
}
}
catch(Exception e)
{
	out.println(e);
}

%>
</html>
</body>