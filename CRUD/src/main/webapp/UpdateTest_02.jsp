<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 ID 수정</title>
</head>
<body>
	<%	
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		String url_mysql = "jdbc:mysql://127.0.0.1/Practice?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		String userid = "";
		
		String A = "select userid from wtest where id = " + id;
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = con_mysql.createStatement();
			ResultSet rs = stmt_mysql.executeQuery(A);
			
			while(rs.next()){
				userid = rs.getString(1);
			}
			
			con_mysql.close();
			
			session.setAttribute("OLD", userid);
			session.setAttribute("ID", id);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	<h4>아이디를 수정한 후 확인 버튼을 누르세요</h4>
	<form action="UpdateTest_03.jsp" method="post">
	사용자 ID : <input type="text" name="userid" value="<%=userid %>"> 
	<input type="submit" value="확인">
	</form>
</body>
</html>