<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Array</title>
</head>
<body>
	<%
		int[] Arr = {10, 20, 30};
		out.println(Arrays.toString(Arr));
	%>
</body>
</html>