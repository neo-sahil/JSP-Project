<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<link rel="stylesheet" type="text/css" href="movie.css"/>
</head>
<body>
	<div id="container">
        <div id="main">
            <jsp:include page="header.jsp"></jsp:include>
            <div class="title-signup2">
                <h4>You Sign-up Successfully</h4>
            </div>
            <div class="button-signup2">
                <a href="SignIn.jsp" class="btn">Sign-in</a>
            </div>
        </div>
    </div>
    <footer id="footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
</body>
</html>