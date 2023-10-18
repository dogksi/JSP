<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name, age;
	name = request.getParameter("param1");
	age = request.getParameter("param2");
	
	%>
	<li>이름 : <%=name %></li>
	<li>나이 : <%=age %></li>
</body>
</html>