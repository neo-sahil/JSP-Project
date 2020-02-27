<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hrithik's Movies</title>

</head>
<body>
	<div id="container">
        <div id="main">
            <jsp:include page="header.jsp"></jsp:include>
            <div class="title">
                <h1>Hrithik's Movies</h1>
            </div>
            <div class="tagline">
                <h4><i>Elevate Your Attitude!!!!</i></h4>
            </div>
            <div class="button">
                <a href="#" class="btn">Movies</a>
                <a href="#" class="btn">Accessories</a>
            </div>
        </div>
    </div>
    <footer id="footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
</body>
</html>