<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		
		// Null Check
		var form = document.loginForm;
		if(form.id.value==""){
			alert("아이디를 입력해주세요!");
			form.id.focus();
			return false;
		}
		if(form.pw.value==""){
			alert("비밀번호를 입력해주세요!");
			form.pw.focus();
			return false;
		}
		
		// Length Check
		if(form.id.value.length<4 || form.id.length>13){
			alert("아이디는 4~12자리로 입력해주세요!");
			form.id.select();
			return false;
		}
		if(form.pw.value.length<4){
			alert("비밀번호는 4자리 이상으로 입력해주세요!");
			form.pw.select();
			return false;
		}
		
		form.submit();

	}
</script>
<body>
	<form name="loginForm" action="Validation_02_Process.jsp">
		아이디 : <input type="text" name="id"> <br>
		비밀번호 : <input type="password" name="pw"> <br>
		<input type="button" value="전송" onclick="CheckForm()">
	</form>
</body>
</html>