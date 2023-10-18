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
application.setAttribute("name", "이순신");
%>
<h2>application 영역</h2>
<p>app 이름 : <%= application.getAttribute("name") %></p>
<a href="test_app2.jsp">다른 페이지 이동</a>
</body>
</html>