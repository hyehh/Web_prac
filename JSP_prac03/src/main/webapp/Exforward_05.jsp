<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눗셈</title>
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	<form action="Exforward_01.jsp" method="post">
		첫 번째 수 : <%=num1 %> <br>
		두 번째 수 : <%=num2 %> <br><br>
		<%=num1 %> / <%=num2 %> = <%=((double)num1/(double)num2) %>
		<input type="submit" value="초기화면">
		
	</form>
</body>
</html>