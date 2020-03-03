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
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");// for HTTP 1.1
	
	response.setHeader("Pragma", "no-cache");//for HTTP 1.0
		
	response.setHeader("Expires", "0");//for proxy
%>
	<form action="LogOut" method="POST">
		<input type="submit" value="LogOut"/>
	</form>
</body>
</html>