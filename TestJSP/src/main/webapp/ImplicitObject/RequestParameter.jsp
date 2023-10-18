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
String id = request.getParameter("id");
String sex = request.getParameter("sex");
sex = sex.equals("man") ? "남자" : "여자";
String[] favo = request.getParameterValues("favo");
String favoStr = "";
if(favo != null){
	for(int i =0; i<favo.length;i++){
		if(favo[i].equals("eco")){
			favoStr += "경제 ";
		}else if(favo[i].equals("pol")){
			favoStr += "정치 ";
		}else if(favo[i].equals("ent")){
			favoStr +="연예 ";
		}
	}
}
String intro = request.getParameter("intro").replace("\r\n", "<br/>");
%>
<ul>
	<li>아이디 : <%= id %></li>
	<li>성별 : <%= sex %></li>
	<li>관심사항 : <%= favoStr %></li>
	<li>자기소개 : <%= intro %></li>
</ul>
</body>
</html>