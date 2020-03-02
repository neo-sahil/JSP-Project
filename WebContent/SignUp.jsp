<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" type="text/css" href="movie.css"/>
</head>
<body>
    <div id="container">
        <div id="main">
        	<jsp:include page="header.jsp"></jsp:include>
        	<div id="form">
                <form action="SignUpServlet" method="POST">
                     <fieldset>
                         <legend>Enter details:</legend>
                         <table>
                             <tr>
                                 <td>FirstName:</td><td><input type="text" name="uname1" placeholder="Enter FirstName"/></td>
                                 <td>SurName:</td><td><input type="text" name="uname2" placeholder="Enter SurName"/></td>
                             </tr>
                             <tr>
                                <td>Mobile No.:</td><td colspan="3"><input type="text" name="mobile" placeholder="Enter MobileNumber"/></td>
                            </tr>
                            <tr>
                                <td>Email:</td><td><input type="email" name="email" placeholder="Enter EmailAddress"/></td>
                            </tr>
                            <tr>
                                <td>Password:</td><td><input type="password" name="password1" placeholder="Enter Password"/></td>
                            </tr>
                            <tr>
                                <td></td><td><input type="password" name="password2" placeholder="Conferm Password"/></td>
                            </tr>
                            <tr>
                                <td>Gender:</td>
                                <td>
                      				<select name="gender" > 
										<option>Male</option>
										<option>Femail</option>
										<option>Other</option>
									</select>       	
                                </td>
                            </tr>
                            <tr>
                                <td></td><td><input class="btnn" type="submit" value="SignUp"/><input class="btnn" type="reset" value="Reset"/></td>
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