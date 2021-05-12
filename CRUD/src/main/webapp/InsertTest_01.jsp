<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Test</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		var form = document.form;
		// Null Test
		if(form.userid.value==""){
			alert("사용자 ID를 입력해주세요!");
			form.userid.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<h3>데이터 입력을 위한 테스트</h3>
	
	<form name="form" action="InsertTest_02.jsp" method="post">
		사용자 ID : <input type="text" name="userid"> 
		<input type="button" value="입력" onclick="CheckForm()">
	</form>
</body>
</html>