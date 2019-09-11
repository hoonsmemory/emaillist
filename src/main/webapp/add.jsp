<%@page import="kr.co.itcen.emaillist.dao.test.EmaillistDaoTest"%>
<%@page import="kr.co.itcen.emaillist.vo.EmaillistVo"%>
<%@page import="kr.co.itcen.emaillist.dao.EmaillistDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String firstName = request.getParameter("firstName");
	String lastName  = request.getParameter("lastName");
	String email     = request.getParameter("email");

	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmaillistDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록 되었습니다.</h1>
</body>
</html>