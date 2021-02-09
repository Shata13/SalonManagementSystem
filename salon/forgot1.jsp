<html>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");

String username=(String)session.getAttribute("username"); 
String password=request.getParameter("password");
PreparedStatement ps=con.prepareStatement("update reg set password=? where email=?");
ps.setString(1,password);
ps.setString(2,username);
int i=ps.executeUpdate();
if(i>0)
{
	%>
	<script>
			 alert("password Chnaged");
			 window.location.href='login1.html';
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