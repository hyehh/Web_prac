<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>now</title>
</head>
<body>
	<%
		GregorianCalendar now = new GregorianCalendar();
		String date = String.format("%TF", now);
		String time = String.format("%TT", now);
	%>
	<%=now %>
	오늘의 날짜 : <%=date %> <br>
	현재의 시간 : <%=time %> <br>
	<%=String.format("%TY년 %Tm월 %Td일", now, now, now) %> <br>
	<%=String.format("%TH시 %TM분 %TS초", now, now, now) %> <br>
</body>
</html>