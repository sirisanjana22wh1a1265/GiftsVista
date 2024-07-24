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
	String name = (String)request.getAttribute("name");
%>

<div align="center">
	<table border="5px" style="width:600px">
		<tr>
			<th>Name</th>
		</tr>
		<% 
			if(name!="")
			{
		%>
		<tr>
			<td><%=name %></td>
		<%
			}
		%>
</div>
</body>
</html>