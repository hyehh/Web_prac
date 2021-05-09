<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장 변수</title>
</head>
<body>
	<%
	// 지금 현재 이 파일이 어느 프로젝트에 있는지 알려줌! 괄호 안에 내용 없어야 함
	String appPath = application.getContextPath();
	
	// input.txt가 어디에 있는지 엄청 구체적으로 알려줌! 괄호 안에 내용 꼭 있어야 함
	String filePath = application.getRealPath("input.txt");
	%>
	<%=appPath %> <br>
	<%=filePath %> <br>
</body>
</html>