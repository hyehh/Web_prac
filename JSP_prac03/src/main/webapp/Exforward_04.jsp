<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곱셈</title>
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		out.println("첫 번째 수 : " + num1 + "<br>");
		out.println("두 번째 수 : " + num2 + "<br><br>");
	%>
	<form action="Exforward_05.jsp" method="post">
		<%=num1 %> X <%=num2 %> = <%=(num1*num2) %>
		<input type="hidden" name="num1" value="<%=num1 %>">
		<input type="hidden" name="num2" value="<%=num2 %>">
		<input type="submit" value="나눗셈">
	</form>
</body>
</html>