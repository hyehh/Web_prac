<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인 확인</title>
</head>
<body>
	<%
		String age = request.getParameter("age");
		String confirm = request.getParameter("confirm");
		String possible = request.getParameter("possible");
	%>
	<h1><%=confirm %></h1>
	당신의 나이는 <%=age %>살 이므로 주류 구매가 <%=possible %>가능합니다. <br>
	<a href="Age_01.jsp">처음으로 이동</a> <br>
	
</body>
</html>