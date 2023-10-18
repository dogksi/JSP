<%@page import="java.sql.DriverManager"%>
<%@page import="jakarta.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
Connection connection;
Statement statement;
ResultSet resultSet;

String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String uid = "musthave";
String upw = "1234";
String query = "select * from member";
%>

<%
try{
	Class.forName(driver);
	connection = DriverManager.getConnection(url,uid,upw);
	statement = connection.createStatement();
	resultSet = statement.executeQuery(query);
	
	while(resultSet.next()){
		String id = resultSet.getString("id");
		String pw = resultSet.getString("pass");
		String name = resultSet.getString("name");
		
		out.println("아이디 : "+ id + "<br>패스워드 : "+ pw + "<br>이름 : "+ name);
	}
}catch(Exception e){}
finally{
	try{
		if(resultSet != null) resultSet.close();
		if(statement != null) statement.close();
		if(connection != null) connection.close();
	}catch(Exception e){
		
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>