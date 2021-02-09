//update code for change password
<html>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");

String email=(String)session.getAttribute("email"); 
String password=request.getParameter("password");
PreparedStatement ps=con.prepareStatement("update reg set password=? where email=?");
ps.setString(1,password);
ps.setString(2,email);
int i=ps.executeUpdate();
if(i>0)
{
	%>
	<script>
			 alert("password Chnaged");
			 window.location.href='changepwd.jsp';
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