<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
		<form action="showRecords.jsp" method="post">
			<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
				<tr>
					<td width="25%"><input type="submit" value="show all records(task1)"></td>
					
					<tr><td></td><td></td>
					
				
				</tr>
			</TABLE>
		</form>
		<form action="managerRecords.jsp" method="post">
			<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
			
				<tr>
					<td width="25%"><input type="submit" value="manager records(task3)"></td>
					
					<td>Name: <input type = "text" name = "name"></td>
			
				</tr>
			</TABLE>
		</form>
		<form action="reportingRecords.jsp" method="post">
			<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
			
				<tr>
					<td width="25%"><input type="submit" value="Reporting Tree(task4)"></td>
					
					<td>Name: <input type = "text" name = "name"></td>
			
				</tr>
			</TABLE>
		</form>
		<form action="summaryRecords.jsp" method="post">
			<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
			
				<tr>
					<td width="25%"><input type="submit" value="Records Summary(task5)"></td>
					
					<td>Name: <input type = "text" name = "name"></td>
			
				</tr>
			</TABLE>
		</form>
		<form action="SearchServlet" method="post">
			<TABLE style="background-color: #ECE5B6;" WIDTH="50%">
			
				<tr>
					<td width="25%"><input type="submit" value="Search records(task2)"></td>
					<td>Record Name: <input type = "text" name = "name"></td>
					<td>Operation: <input type = "text" name = "operation"></td>
			<td>Data: <input type = "text" name = "data"></td>
				</tr>
			</TABLE>
		</form>
		
	</center>
</body>
</html>