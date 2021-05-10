<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력 결과</title>
</head>
<body>
	아이디 : ${param.id } <br>
	선택한 동물 : ${paramValues.animal[0] }
				${paramValues.animal[1] }
				${paramValues.animal[2] }
</body>
</html>