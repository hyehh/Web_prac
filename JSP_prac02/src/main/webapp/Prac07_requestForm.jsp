<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Prac08_requestParameter.jsp" method="get">
	<input type="text" name="tf1" size="7"> + 
	<input type="text" name="tf2" size="7"> <br>
	<select name="cb1">
		<%
			for(int i=1; i<=999; i++){
				// <option value="i">i</option>
				out.println("<option value=" + "\"" + i + "\"" + ">" +i + "</option>");
			}
		%>
	</select> X 
	<select name="cb2">
		<%
			for(int i=1; i<=999; i++){
				// <option value="i">i</option>
				out.println("<option value=" + "\"" + i + "\"" + ">" +i + "</option>");
			}
		%>
	</select> <br>
	<input type="submit" value="OK">
	</form>
</body>
</html>