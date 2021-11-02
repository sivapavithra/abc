<%@page import="abc.SearchServlet.*"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String w= request.getParameter("name");
StringBuilder query = new StringBuilder("SELECT p.\"Name\"\r\n"+  "FROM employee AS n,\r\n"+" employee AS p\r\n"+" WHERE n.\"lft\" BETWEEN p.\"lft\" AND p.\"rgt\"\r\n"+" AND n.\"Name\" = '"+w+"'\r\n"
		+ "ORDER BY p.\"lft\";");
ResultSet rs=resultset.registerEmployee(query.toString());%>
<h2 align="center"><font><strong>Reporting Tree</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>

<%
try{ 

while(rs.next()){
%>
<tr bgcolor="#DEB887">


<td><%=rs.getString("Name") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>