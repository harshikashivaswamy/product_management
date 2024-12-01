<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
</head>
<body>
	<div align="center">
		<h1>Products</h1>
		<table border="1">
			<tr>
				<th>Name</th>
				<th>Image</th>
				<th>Description</th>
				<th>Price</th>
				<th>Category</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="p" items="${products}">
				<tr>
					<th>${p.name}</th>
					<th><img height="150px" width="150px" alt="${p.name }"
						src="${p.imageLink }"></th>
					<th>${p.description }</th>
					<th>${p.price }</th>
					<th>${p.category }</th>
					<th><a href="edit?id=${p.id}"><button>Edit</button></a></th>
					<th><a href="delete?id=${p.id}"><button>Delete</button></a></th>
				</tr>
			</c:forEach>

		</table><br><br>
		<a href="home"><button>Back</button></a>
	</div>


	<c:if test="${message!=null}">
		<script type="text/javascript">
			alert("${message}")
		</script>
	</c:if>
</body>
</html>
 --%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        img {
            display: block;
            object-fit: cover;
            border-radius: 4px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        .delete-btn {
            background-color: #f44336;
        }

        .delete-btn:hover {
            background-color: #da190b;
        }

        .back-btn {
            background-color: #008CBA;
            margin-top: 20px;
        }

        .back-btn:hover {
            background-color: #007399;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Products</h1>
        <table>
            <tr>
                <th>Name</th>
                <th>Image</th>
                <th>Description</th>
                <th>Price</th>
                <th>Category</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach var="p" items="${products}">
                <tr>
                    <td>${p.name}</td>
                    <td><img height="150" width="150" alt="${p.name}" src="${p.imageLink}"></td>
                    <td>${p.description}</td>
                    <td>${p.price}</td>
                    <td>${p.category}</td>
                    <td><a href="edit?id=${p.id}"><button>Edit</button></a></td>
                    <td><a href="delete?id=${p.id}"><button class="delete-btn">Delete</button></a></td>
                </tr>
            </c:forEach>
        </table>
        <a href="home"><button class="back-btn">Back</button></a>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}");
        </script>
    </c:if>
</body>
</html>
 