<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div align="center">
		<h1>Login Here,</h1>
		<form action="login" method="post"
			style="border: 1px solid black; padding: 25px; margin-left: 250px; margin-right: 250px;">
			<label for="un">Username: </label> <input type="text" name="username"
				id="un"> <br> <br> <label for="pwd">Password:
			</label> <input type="password" name="password" id="pwd"> <br> <br>
			<button>Login</button>
		</form>
		<br> <br> <a href="register"><button>Register</button></a>
	</div>

	<script type="text/javascript">
	alert("${message}")
	</script>
</body>
</html>