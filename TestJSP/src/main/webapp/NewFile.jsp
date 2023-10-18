<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String str1 = "JSP";
String str2 = "안녕하세요..";	// 스크립트 요소(선언부)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 타이틀</title>
</head>
<body>
	처음 만든 <%= str1 %> 홈페이지<br>	
	안녕하세요
	<p>
	<%
	out.println(str2 + str1 + "입니다. 열공합니다^^*");
	%>
	
	</p>
</body>
</html>