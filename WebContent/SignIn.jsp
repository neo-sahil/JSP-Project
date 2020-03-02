<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn</title>
<link rel="stylesheet" type="text/css" href="movie.css"/>
</head>
<body>
	<div id="container">
        <div id="main">
        	<jsp:include page="header.jsp"></jsp:include>
        	<div id="form-signin">
                <form action="SignInServlet" method="POST">
                     <fieldset>
                         <legend></legend>
                         <table>
                            <tr>
                                <td>Email:</td><td><input type="email" name="email" placeholder="Enter EmailAddress"/></td>
                            </tr>
                            <tr>
                                <td>Password:</td><td><input type="password" name="password1" placeholder="Enter Password"/></td>
                            </tr>
                            <tr>
                                <td></td><td><input class="btnn" type="submit" value="SignIn"/></td>
                            </tr>
                         </table>    
                     </fieldset>
                 </form>
             </div>
        </div>
    </div>
    <footer id="footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
</body>
</html>