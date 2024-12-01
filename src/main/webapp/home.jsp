<%@ page isELIgnored="false" %>
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


	<script type="text/javascript">	
	<%if (request.getAttribute("message") != null) {%>
		alert("${message}")
	<%}%>	
	</script>
	</div>
</div>	
</body>
</html>