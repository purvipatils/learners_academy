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
		<h1>Admin</h1>
			<input type="hidden" name="command" value="LOGIN" /> <label>Username
				: </label> <br /> <input type="text" placeholder="Enter Username"
				name="username" required> <br /> <label> New Password :
			</label> <br /> <input type="password" placeholder="Enter Password"
				name="password" required> <br />
			<button type="submit">Update Password</button>
			<br />
			
				</div>
			</div>
		</div>
	</form>
</body>
</html>