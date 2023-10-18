<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp" %>
<%
// 폼값 받기
String title = request.getParameter("title");
String content = request.getParameter("content");

// 폼값을 DTO 객체에 저장
BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setId(session.getAttribute("UserId").toString());	// id가 빈값이면 FK 제약조건 위배

// DAO 객체를 통해 DB에 DTO 저장
BoardDAO dao = new BoardDAO(application);
int iResult = dao.insertWrite(dto);	// insertWrite 메서드 호출 후 DB에 저장
dao.close();

// 성공 or 실패?
if(iResult == 1) {
	response.sendRedirect("List.jsp");	// 성공하면 List페이지로 이동
} else {
	JSFunction.alertBack("글쓰기에 실패하였습니다", out);	// 실패하면 경고창을 띄우고 이전 페이지로 이동
}
%>
