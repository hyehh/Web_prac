<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 노출 되면 안되는 페이지 & 사용자에게 보여주지 않아도 되는 페이지이기 때문에 html 필요 없음 -->
	<%
		request.setCharacterEncoding("utf-8");
	
		String userid = request.getParameter("userid");
		
		String url_mysql = "jdbc:mysql://127.0.0.1/Practice?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		String result;
		
		String A = "insert into wtest (userid) values (?)";
		
		PreparedStatement ps = null;
		
		try{
			// 이 패키지에 있는 걸 쓸꺼야 라고 선언하는 것!
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = con_mysql.createStatement();
			
			ps = con_mysql.prepareStatement(A);
			
			ps.setString(1, userid);
			// 업데이트한다는 의미
			ps.executeUpdate();
			
			con_mysql.close();
			
			result = "C";
		}catch(Exception e){
			e.printStackTrace();
			
			result = "Inc";
			
		}
		
		response.sendRedirect("InsertTest_03.jsp?result=" + result);
	%>