<%-- <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<div align="center">
 <div style="border:2px solid black;height:200px;width:500px">
	<h3>
		Welcome,
		<%=session.getAttribute("username")%></h3>
	<h1 style="text-decoration:underline">Home Page</h1>

	<a href="add-product" ><button style="background-color:pink;color:#cccccc">Add Product</button></a>
	<a href="logout"><button style="background-color:grey">Logout</button></a>
	<a href="fetch-product"><button style="background-color:grey">Fetch Product</button></a>

	<c:if test="${message!=null }">
	<script type="text/javascript">	
		alert("${message}")	
	</script>
	</c:if>
	</div>
</div>	
</body>
</html> --%>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 500px;
            text-align: center;
        }

        .welcome-text {
            color: #1a73e8;
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        .page-title {
            color: #202124;
            border-bottom: 2px solid #1a73e8;
            padding-bottom: 10px;
            margin-bottom: 30px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 25px;
        }

        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: transform 0.2s, opacity 0.2s;
        }

        .btn:hover {
            transform: translateY(-2px);
            opacity: 0.9;
        }

        .btn-add {
            background-color: #ff69b4;
            color: white;
        }

        .btn-logout {
            background-color: #6c757d;
            color: white;
        }

        .btn-fetch {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h3 class="welcome-text">
                Welcome, <%=session.getAttribute("username")%>
            </h3>
            <h1 class="page-title">Home Page</h1>
            <div class="button-container">
                <a href="add-product">
                    <button class="btn btn-add">Add Product</button>
                </a>
                <a href="logout">
                    <button class="btn btn-logout">Logout</button>
                </a>
                <a href="fetch-product">
                    <button class="btn btn-fetch">Fetch Product</button>
                </a>
            </div>
            <c:if test="${message!=null}">
                <script type="text/javascript">
                    alert("${message}")
                </script>
            </c:if>
        </div>
    </div>
</body>
</html>
