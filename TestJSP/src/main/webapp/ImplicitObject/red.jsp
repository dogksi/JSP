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
	String userid = request.getParameter("id");
	String userpw = request.getParameter("pw");
	
	if(userid.equals("관리자") && userpw.equals("123")){
		response.sendRedirect("res01.jsp");
	}else{
		response.sendRedirect("res02.jsp");
	}
	%>
	<p></p>
</body>
</html>