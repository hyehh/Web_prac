<%@page import="java.util.ArrayList"%>
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
		ArrayList<String> arrayList = new ArrayList<String>();
		
		arrayList.add("딸기");
		arrayList.add("오렌지");
		arrayList.add("복숭아");
		
		request.setAttribute("FRUITS", arrayList);
		
		/* response.sendRedirect("EL_04.jsp"); 이건 안된다! */
 		RequestDispatcher dispatcher = request.getRequestDispatcher("EL_04.jsp");
		dispatcher.forward(request, response); 
		
		
	%>
</body>
</html>