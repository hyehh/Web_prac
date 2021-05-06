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
		int a = 30;
		int b = 20;
		int addition = a + b;
		int subtract = a - b;
		int multiple = a * b;
		int division = a / b;
		int remainder = a % b;
		
		out.println(a + " + " + b + " = " + (a+b));
	%>
	<br>
	<br>
	<%=a %> + <%=b %> = <%=addition %><br>
	<%=a %> - <%=b %> = <%=subtract %><br>
	<%=a %> X <%=b %> = <%=multiple %><br>
	<%=a %> / <%=b %> = <%=division %><br>
	<%=a %> % <%=b %> = <%=remainder %><br>
	<br>
	<%=a %> + <%=b %> = <%=a+b%><br>
	<%=a %> - <%=b %> = <%=a-b%><br>
	<%=a %> X <%=b %> = <%=a*b%><br>
	<%=a %> / <%=b %> = <%=a/b%><br>
	<%=a %> % <%=b %> = <%=a%b%><br>
	
</body>
</html>