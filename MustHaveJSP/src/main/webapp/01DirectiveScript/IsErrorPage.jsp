<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage/isErrorPage 속성</title>
</head>
<body>
	<h2>서비스 중 일시적인 오류가 발생하였습니다.</h2>
	<p>
		오류명 : <%= exception.getClass().getName() %> <br /> <!-- exception 내장 객체로부터 발생한 예외의 타입과 메시지를 얻어옴 -->
		오류 메시지 : <%= exception.getMessage() %>
	</p>
</body>
</html>