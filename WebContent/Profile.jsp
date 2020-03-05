<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
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
=======
<title>Profile</title>
<link rel="stylesheet" type="text/css" href="movie.css"/>
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");// for HTTP 1.1
		
		response.setHeader("Pragma", "no-cache");//for HTTP 1.0
				
		response.setHeader("Expires", "0");//for proxy
		if(session.getAttribute("firstname")==null)
		{
			response.sendRedirect("SignIn.jsp");
		}
	%>
	<div id="container">
        <div id="main">
            <jsp:include page="header.jsp"></jsp:include>
            <div id=profile>
                <form action="LogOut" method="POST">
                    <input type="submit" value="Logout"/>
                </form>
            </div>
        </div>
    </div>
    <footer id="footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
>>>>>>> working
</body>
</html>