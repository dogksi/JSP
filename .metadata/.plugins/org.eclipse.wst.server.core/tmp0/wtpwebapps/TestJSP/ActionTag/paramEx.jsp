<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="paramForwardEx.jsp">
		<jsp:param value="이순신" name="param1"/>
		<jsp:param value="14" name="param2"/>
	</jsp:forward>
</body>
</html>