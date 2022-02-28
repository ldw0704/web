<%@page import="dao.ExamDAO"%>
<%@page import="domain.ExamVO"%>
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
response.setContentType("text/html; charset=UTF-8");

String qs = request.getParameter("qs");
String an = request.getParameter("an");
ExamVO vo = new ExamVO(0, qs, an);
new ExamDAO().create(vo);
//페이지 이동
response.sendRedirect("history.jsp");
%>
</body>
</html>






