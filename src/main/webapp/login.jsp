<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>


	<form action="AdminControllerServlet" method="POST">
		<div class="container">
			<h1>Admin Login</h1>
			<input type="hidden" name="command" value="LOGIN" /> <label>Username
				: </label>  <input type="text" placeholder="Enter Username"
				name="username" required> <br /> <label>Password :
			</label> <br /> <input type="password" placeholder="Enter Password"
				name="password" required> <br />
			<button type="submit">Login</button>
			<br />
			<div class="form-actions">
				<div class="form-left">
					<input type="checkbox" checked="checked"> Remember me
				</div>
				<div class="form-right">
					<span class="psw">Forgot <a href="forgot-password.jsp">password?</a></span>
				</div>
			</div>
		</div>
	</form>
</body>
</html>