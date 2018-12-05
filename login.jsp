<%-- 
    Document   : login.jsp
    Created on : Oct 17, 2018, 7:06:42 PM
    Author     : i1vag_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="login-css.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        
        <form method="POST" action="loginServlet">
        <div class="space"></div>
	<div class="accountarea">
		<div class="outside">
		<div class="loginarea">
			<div class="titlelogin">
				<p>Login</p>
			</div>
			<div class="inputlogin">
				<div class="inside-form">
					<p class="user-pass">Username</p>
					<input type="text" name="username" class="inputtext">
					<p class="user-pass">Password</p>
					<input type="Password" name="password" class="inputtext"> <br> <br>
					<a href="forgetPassword.jsp">Forget Password</a> <br>					
                                        <input type="submit" name="sub" value="Log in" class="btninform"></input>
					<a href="register.jsp" class="btninform1">Register New Account</a>
					<p class="user-pass"><%if(request.getAttribute("message")!=null) out.print(request.getAttribute("message"));%></p>

				</div>
			</div>
		</div>
		</div>

	</div>
        </form>
                <script type="text/javascript" src="checkLogin.js"></script>

    </body>
</html>
