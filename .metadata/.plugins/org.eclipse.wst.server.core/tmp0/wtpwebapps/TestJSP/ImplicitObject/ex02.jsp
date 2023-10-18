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
	request.setCharacterEncoding("UTF-8");
	String str1 = request.getParameter("id");
	String str2 = request.getParameter("pw");
%>
<li>아이디:<%= str1 %></li>
<li>비밀번호:<%= str2 %></li>
</body>
</html>