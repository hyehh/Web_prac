<%@page import="java.net.URLDecoder"%>
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
		String age = request.getParameter("age");
		String confirm = URLDecoder.decode(request.getParameter("confirm"), "utf-8");
		String possible = URLDecoder.decode(request.getParameter("possible"), "utf-8");
	%>
	
	<h1><%=confirm %></h1>
	당신의 나이는 <%=age %>살 이므로 주류 구매가 <%=possible %>가능합니다. <br>
	<a href = "ResponseAge_05.jsp">처음으로 이동</a>
	
</body>
</html>