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
String address=request.getParameter("address");
String name=request.getParameter("name");
Long phoneno=Long.parseLong(request.getParameter("phoneno"));
PreparedStatement st=con.prepareStatement("update reg set name=?,address=?,phoneno=? where email=?");
st.setString(1,name);
st.setString(2,address);
st.setLong(3,phoneno);
st.setString(4,email);
int r=st.executeUpdate();
if (r>0)
{%>
   <script>
			 alert("Information updated");
			 window.location.href='userinfo.jsp';
			 </script>
<%
}
}
catch(Exception e)
{
	out.println(e);
}
%>