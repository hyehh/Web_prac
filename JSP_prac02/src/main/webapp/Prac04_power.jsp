<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2의 거듭제곱</title>
</head>
<body>
	<%
		for(int i=1; i<=5; i++){
			out.println("2 ^ " + i + " = " + power(2, i) + "<br>");
		}
	%>
	<br>
	<%
		for(int i=1; i<=5; i++){
			out.println("2 ^ " + i + " = " + (int)Math.pow(2, i) + "<br>");
		}
	%>
</body>
</html>
	<%!
		private int power(int a, int b){
		int result = 1;
		for(int i=0; i<b; i++){
/* 		for(int i=1; i<=b; i++){ */
			result *= a;
		}
		return result;
	}
	%>