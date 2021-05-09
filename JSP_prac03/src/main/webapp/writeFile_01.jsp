<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write File</title>
</head>
<body>
	<h2> Write File </h2>
	<form action="writeFile_02.jsp" method="post">
		이름 : <input type="text" name="name" size="15"> <br>
		제목 : <input type="text" name="title" size="15"> <br>
		<textarea rows="7" cols="20" name="content"></textarea> <br>
		<input type="submit" value="저장">
	</form>
</body>
</html>