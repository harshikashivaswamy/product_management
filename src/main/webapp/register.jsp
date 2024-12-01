<%-- <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<div align="center">
		<h1>Register Here,</h1>
		<form action="register" method="post"
			style="border: 1px solid black; padding: 25px; margin-left: 250px; margin-right: 250px;">
			<label for="name">Name: </label> <input type="text" name="name"
				id="name"> <br> <br> <label for="un">Username:
			</label> <input type="text" name="username" id="un"> <br> <br>
			<label for="pwd">Password:</label> <input type="password"
				name="password" id="pwd"> <br> <br> <label
				for="cpwd">Confirm Password:</label> <input type="password"
				name="cpassword" id="cpwd"> <br> <br>
			<button>Register</button>
		</form>
		<br> <br> <a href="login"><button>Login</button></a>
	</div>
	
	<c:if test="${message!=null}">
	<script type="text/javascript">
		alert("${message}")
	</script>
	</c:if>
</body>
</html>
 --%>
 <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
        }

        .form-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 30px;
            width: 400px;
        }

        .form-group {
            margin-bottom: 20px;
            width: 100%;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }

        .login-button {
            margin-top: 20px;
            background-color: #2196F3;
        }

        .login-button:hover {
            background-color: #1976D2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Register Here</h1>
        <div class="form-container">
            <form action="register" method="post">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" name="name" id="name">
                </div>
                
                <div class="form-group">
                    <label for="un">Username:</label>
                    <input type="text" name="username" id="un">
                </div>
                
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" name="password" id="pwd">
                </div>
                
                <div class="form-group">
                    <label for="cpwd">Confirm Password:</label>
                    <input type="password" name="cpassword" id="cpwd">
                </div>
                
                <button type="submit">Register</button>
            </form>
            
            <a href="login" style="text-decoration: none;">
                <button class="login-button">Login</button>
            </a>
        </div>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}")
        </script>
    </c:if>
</body>
</html>
 