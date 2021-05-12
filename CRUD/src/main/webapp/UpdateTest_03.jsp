<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<%
		request.setCharacterEncoding("utf-8");
	
		String userid = request.getParameter("userid");
		
		String url_mysql = "jdbc:mysql://127.0.0.1/Practice?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		String A = "update wtest set userid = ? where id = ? ";
		
		PreparedStatement ps = null;
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = con_mysql.createStatement();
			
			ps = con_mysql.prepareStatement(A);
			
			ps.setString(1, userid);
			ps.setString(2, (String)session.getAttribute("ID"));
			
			ps.executeUpdate();
			
			con_mysql.close();
			session.setAttribute("NEW", userid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		response.sendRedirect("UpdateTest_04.jsp");
	%>