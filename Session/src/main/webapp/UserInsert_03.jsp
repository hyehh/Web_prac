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
		request.setCharacterEncoding("utf-8");
		String result = request.getParameter("result");
		
		session.setAttribute("RESULT", result);
		
		if(result.equals("success")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("UserInsert_04.jsp");
			dispatcher.forward(request, response);
		}else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("UserInsert_01.jsp");
			dispatcher.forward(request, response);
		}
	%>
</body>
</html>