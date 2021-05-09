<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
		BufferedReader reader = null;
		try{
			String filePath = application.getRealPath("file.txt");
/* 			String filePath = application.getRealPath("input.txt"); */
			reader = new BufferedReader(new FileReader(filePath));
			while(true){
				String str = reader.readLine();
				// 한 줄을 의미 str에 한 줄 읽은 걸 저장해라!
				if(str == null){ // 근데 읽어올 게 없으면 멈춰라!
					break;
				}
				out.println(str + "<br>"); // 읽어온 걸 출력해라
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
			reader.close();
			// 이거 꼭 해주기!!!!!
			}catch(Exception e){
			e.printStackTrace();
				
			}
		}
	%>
</body>
</html>