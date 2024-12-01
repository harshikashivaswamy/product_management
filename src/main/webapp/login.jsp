<%-- <%@ page isELIgnored="false" %>
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
	
	
	<c:if test="${message!=null}">
	<script type="text/javascript">
	alert("${message}")
	</script>
	</c:if>
</div>
</body>
</html> --%>


<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 500;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
            box-sizing: border-box;
        }

        input:focus {
            border-color: #4CAF50;
            outline: none;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .register-btn {
            background-color: #2196F3;
            margin-top: 15px;
        }

        .register-btn:hover {
            background-color: #1976D2;
        }

        .divider {
            margin: 20px 0;
            text-align: center;
            position: relative;
        }

        .divider:before {
            content: "";
            position: absolute;
            top: 50%;
            left: 0;
            right: 0;
            height: 1px;
            background-color: #ddd;
        }

        .divider span {
            background-color: white;
            padding: 0 10px;
            color: #666;
            position: relative;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome Back!</h1>
        <form action="login" method="post">
            <div class="form-group">
                <label for="un">Username</label>
                <input type="text" name="username" id="un" placeholder="Enter your username">
            </div>
            <div class="form-group">
                <label for="pwd">Password</label>
                <input type="password" name="password" id="pwd" placeholder="Enter your password">
            </div>
            <button class="btn">Login</button>
        </form>
        
        <div class="divider">
            <span>OR</span>
        </div>
        
        <a href="register" style="text-decoration: none;">
            <button class="btn register-btn">Register</button>
        </a>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}")
        </script>
    </c:if>
</body>
</html>
