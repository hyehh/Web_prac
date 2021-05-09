<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 저장 결과</title>
</head>
<body>
	<h2>파일 저장 결과</h2>
	<%	
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		// 저장할 파일 이름 기입
		String filename = "file.txt";
		
		// 파일에 내용 작성하기
		PrintWriter writer = null;
		
		try{
			String filePath = application.getRealPath("file.txt");
			
			writer = new PrintWriter(filePath);
			
			// 파일에 적을 내용
			writer.println("제목 : " + title);
			writer.println("글쓴이 : " + name);
			writer.println(content);
			// 해당 페이지에 표시할 내용
			out.println("저장되었습니다.");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
			writer.close();
			// close 할 때 파일에 저장되기 때문에 꼭 적어주기!
			}catch(Exception e){
			e.printStackTrace();
				
			}
		}
	%>
</body>
</html>