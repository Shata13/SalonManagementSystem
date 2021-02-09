\<html>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");

String username=request.getParameter("email");
String password=request.getParameter("password");
String address=request.getParameter("address");
String name=request.getParameter("name");
Long phn=Long.parseLong(request.getParameter("phoneno"));


PreparedStatement st=con.prepareStatement("select * from reg where email=?");

st.setString(1,username);

ResultSet rs=st.executeQuery();

if (rs.next())
{%>
   <script>
			 alert("username is already taken");
			 window.location.href='login1.html';
			 </script>
			 <%
  response.sendRedirect("booking.html");
}
else
{
	 
PreparedStatement ps=con.prepareStatement("insert into reg(name,email,password,address,phoneno) values(?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,username);
ps.setString(3,password);
ps.setString(4,address);
ps.setLong(5,phn);
int r=ps.executeUpdate();
if(r>0)
{
	%>
	<script>
			 alert("Registered sucessfully");
			 window.location.href='login1.html';
			 </script>
			 <%
}
}
}
catch(Exception e)
{
	out.println(e);
}

%>
</html>
</body>