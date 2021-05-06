<%@page import="java.net.URLEncoder"%>
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
		int age = Integer.parseInt(request.getParameter("age"));
		String confirm;
		String possible;
		
		if(age>=20){
			confirm = URLEncoder.encode("성인", "utf-8");
			possible = URLEncoder.encode("", "utf-8");
		}else{
			confirm = URLEncoder.encode("미성년자", "utf-8");
			possible = URLEncoder.encode("불", "utf-8");
		}
			response.sendRedirect("ResponseAge_07.jsp?age=" + age + "&confirm=" + confirm + "&possible=" + possible);
	%>
</body>
</html>