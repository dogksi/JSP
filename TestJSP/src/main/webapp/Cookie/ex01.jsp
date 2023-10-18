<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>쿠키 설정</h2>
<%
Cookie cookie = new Cookie("cookie","안녕쿠키");
cookie.setPath(request.getContextPath());
cookie.setMaxAge(3600);
response.addCookie(cookie);
%>

<h2>쿠키 불러오기</h2>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie c : cookies){
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		out.println(String.format("%s : %s <br/>", cookieName, cookieValue));
	}
}
%>
<h2>쿠키 삭제하기</h2>
<%

%>
</body>
</html>