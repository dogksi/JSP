<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 예시에서 사용할 변수 선언
int num1 = 3;
pageContext.setAttribute("num2", 4);
pageContext.setAttribute("num3", "5");
pageContext.setAttribute("num4", "8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어(EL) - 연산자</title>
</head>
<body>
	<h3>변수 선언 및 할당</h3>
	스크립틀릿에서 선언한 변수 : ${ num1 }<br />
	page 영역에서 선언한 변수 : ${ num2 }<br />
	변수 할당 및 즉시 출력 : ${ num1 = 7 }<br />
	변수 할당 및 별도 출력 : ${ num2 = 8;'' } => ${ num2 }<br />
	num1 = ${ num1 }, num2 = ${ num2 }, num3 = ${ num3 }, num4 = ${ num4 }
	
	<h3>산술 연산자</h3>
	num1 + num2 : ${ num1 + num2 } <br />
	num1 - num2 : ${ num1 - num2 } <br />
	num1 * num2 : ${ num1 * num2 } <br />
	num3 / num4 : ${ num3 / num4 } <br />
	num3 div num4 : ${ num4 div num4 } <br />
	num3 % num4 : ${ num3 % num4 } <br />
	num3 mod num4 : ${ num3 mod num4 }
	
	<h3>+ 연산자는 덧셈만 가능</h3>
	num1 + "34" : ${ num1 + "34" }<br/>
</body>
</html>