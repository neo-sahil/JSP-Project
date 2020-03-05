<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="movie.css"/>
</head>
<body>
	 <div class="yo">
            <div id="logo">
                <img src="images/logo.png" title="logo" />
            </div>
            <div id="menu" > 
                <ul class="list">
                    <li class="active"><a href="home.jsp"><b>Home</b></a></li>
                    <li><a href="aboutUS.jsp"><b>About Us</b></a></li>
                    <li><a href="ContectUs.jsp"><b>Contact Us</b></a></li>
                    <li><a href="SignUp.jsp"><b>Sign-Up</b></a></li>
                    <li><a href="SignIn.jsp"><b>Sign-In</b></a></li>
                </ul>
            </div>
        </div>
        <div id="emp">
        	<%
	        	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");// for HTTP 1.1
	    		
	    		response.setHeader("Pragma", "no-cache");//for HTTP 1.0
	    				
	    		response.setHeader("Expires", "0");//for proxy
        		if(!(session.getAttribute("firstname")==null))
        		{
        	%>
            <a href="Profile.jsp"><%=session.getAttribute("firstname") %></a>
            <%
        		}
            %>
        </div>
</body>
</html>