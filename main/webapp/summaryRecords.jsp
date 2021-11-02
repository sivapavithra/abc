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
StringBuilder q = new StringBuilder("SELECT DISTINCT \""+w+"\" AS tot from employee");

ResultSet rs = resultset.registerEmployee(q.toString());%>
<h2 align="center"><font><strong>Summary Records</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">

<%
try{ 

while(rs.next()){
	String distinctName=rs.getString("tot");
	StringBuilder query = new StringBuilder("SELECT COUNT(\""+w+"\") AS ct FROM employee WHERE \""+w+"\"='"+distinctName+"';");
	ResultSet r = resultset.registerEmployee(query.toString());
	r.next();
%>
<tr bgcolor="#DEB887">

<td><%=distinctName+":"+r.getInt("ct") %></td>

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