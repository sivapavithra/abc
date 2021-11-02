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
String q="select * from employee;";%>
<% ResultSet rs=resultset.registerEmployee(q);%>
<h2 align="center"><font><strong>Employee Details</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>ID</b></td>
<td><b>Name</b></td>
<td><b>Age</b></td>
<td><b>Department</b></td>
<td><b>Designation</b></td>
<td><b>ReportingTo</b></td>
</tr>
<%
try{ 

while(rs.next()){
%>
<tr bgcolor="#DEB887">

<td><%=rs.getInt("ID") %></td>
<td><%=rs.getString("Name") %></td>
<td><%=rs.getInt("Age") %></td>
<td><%=rs.getString("Department") %></td>
<td><%=rs.getString("Designation") %></td>
<td><%=rs.getString("ReportingTo") %></td>
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