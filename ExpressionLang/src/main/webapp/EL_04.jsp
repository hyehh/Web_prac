<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이달의 인기 과일 목록</title>
</head>
<body>
	<h3>이달의 인기 과일 목록</h3>
	<%-- 1위 : ${paramValues.arrayList[0] } <br> 이것도 안된다!--%>
	
	1위 : ${FRUITS[0] } <br>
	2위 : ${FRUITS[1] } <br>
	3위 : ${FRUITS[2] } <br>
</body>
</html>