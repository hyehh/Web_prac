<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택 결과</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		String number = request.getParameter("number");
		String size = request.getParameter("size");
		String color = request.getParameter("color");
		String result;
		String filename = "file.txt";
		
		PrintWriter writer = null;
		
		try{
			String filePath = application.getRealPath("/" + filename);
			
			writer = new PrintWriter(filePath);
			
			writer.println("수량 : " + number);
			writer.println("크기 : " + size);
			writer.println("색상 : " + color);
			result = "success";
		}catch(Exception e){
			result = "fail";
		}finally{
			try{
				writer.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		response.sendRedirect("cart_03.jsp?result=" + result);
	%>
</body>
</html>