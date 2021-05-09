<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 결과</title>
</head>
<body>
	첫 번째 방법 <br>
	덧셈 : <%=request.getAttribute("ADD") %> <br>
	뺄셈 : <%=request.getAttribute("SUB") %> <br>
	곱셈 : <%=request.getAttribute("MUL") %> <br>
	나눗셈 : <%=request.getAttribute("DIV") %> <br>
	두 번째 방법 <br>
	덧셈 : ${ADD } <br>
	뺄셈 : ${SUB } <br>
	곱셈 : ${MUL } <br>
	나눗셈 : ${DIV } <br>
</body>
</html>