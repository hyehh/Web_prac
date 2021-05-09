<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 숫자 계산</title>
</head>
<body>
	<%
		int tf1 = Integer.parseInt(request.getParameter("tf1"));
		int tf2 = Integer.parseInt(request.getParameter("tf2"));
		int cb1 = Integer.parseInt(request.getParameter("cb1"));
		int cb2 = Integer.parseInt(request.getParameter("cb2"));
	%>
	<%=tf1 %> + <%=tf2 %> = <%=(tf1+tf2) %> <br>
	<%=cb1 %> X <%=cb2 %> = <%=(cb1*cb2) %>
</body>
</html>