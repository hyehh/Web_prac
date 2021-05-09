<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품 선택 저장 결과</h2>
	<%
		String result = request.getParameter("result");
		if(result.equals("success")){
			out.print("저장 되었습니다");
		}else{
			out.print("파일 저장 중 오류가 발생했습니다");
		}
	%>
	<br>
	<br>
	<form action="cart_04.jsp" method="post">
		<input type="submit" value="저장 결과 불러오기">
	</form>
</body>
</html>