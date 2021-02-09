<%

String username=request.getParameter("username");
String password=request.getParameter("password");
if (username.equals("admin") && password.equals("12345"))
{
  response.sendRedirect("admin2.jsp");
}
else
{
	 %>
			 <script>
			 alert("username or password was wrong");
			 window.location.href='admin.jsp';
			 </script>
			 <%
}
%>