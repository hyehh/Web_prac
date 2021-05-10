<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 결과</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<h3>회원 가입 결과</h3>
	가입 되었습니다.
	<h2>가입 내용</h2>
	아이디 : ${ID } <br>
	패스워드 : ${PW } <br>
	이름 : ${NAME } <br>
	<%session.invalidate(); %>
	
<%-- 	
	아이디 : <%=session.getAttribute("ID") %> <br>
	패스워드 : <%=session.getAttribute("PW") %> <br>
	이름 : <%=session.getAttribute("NAME") %> <br>
	<%session.invalidate(); %> --%>
</body>
</html>