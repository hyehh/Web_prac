<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성격 테스트</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String food = request.getParameter("food");
		
		session.setAttribute("FOOD", food);
	%>
	<h2>좋아하는 동물은?</h2>
	<form action="CharacterTest_03.jsp" method="post">
		<input type="text" name="animal"> <br> <br>
		<input type="submit" value="확인">
	</form>
</body>
</html>