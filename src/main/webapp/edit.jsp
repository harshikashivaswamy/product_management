<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
<div align="center">
	<h1>Update Product</h1>
	<form action="edit" method="post">
	<input type="hidden" name="id" value="${p.id}">
		Product Name: <input type="text" name="name" value="${p.name}"><br><br>
		Product Description: <input type="text" name="description" value="${p.description}"><br><br>
		Product Image Link:  <input type="text" name="imageLink" value="${p.imageLink}"><br><br>
		Product Price: <input type="text" name="price" value="${p.price}"><br><br>
		Product Category: <input type="text" name="category" value="${p.category}"><br><br>
		<button>Update</button>
	</form><br>
	
	<a href="home"><button>Back</button></a>

<c:if test="${message!=null }">
<script type="text/javascript">
alert("${message}")</script>
</c:if>
</div>
</body>
</html> --%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Product</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            padding: 20px;
            min-height: 100vh;
        }

        .container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 600px;
            margin: 20px auto;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 30px;
            text-align: center;
            font-size: 2.2em;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #34495e;
            font-weight: 500;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 6px;
            font-size: 16px;
            transition: border-color 0.3s ease;
            box-sizing: border-box;
        }

        input[type="text"]:focus {
            border-color: #3498db;
            outline: none;
        }

        .btn {
            background-color: #3498db;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.3s ease;
            margin: 5px;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        .btn-back {
            background-color: #95a5a6;
        }

        .btn-back:hover {
            background-color: #7f8c8d;
        }

        .buttons {
            text-align: center;
            margin-top: 20px;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Product</h1>
        <form action="edit" method="post">
            <input type="hidden" name="id" value="${p.id}">
            
            <div class="form-group">
                <label for="name">Product Name</label>
                <input type="text" id="name" name="name" value="${p.name}">
            </div>

            <div class="form-group">
                <label for="description">Product Description</label>
                <input type="text" id="description" name="description" value="${p.description}">
            </div>

            <div class="form-group">
                <label for="imageLink">Product Image Link</label>
                <input type="text" id="imageLink" name="imageLink" value="${p.imageLink}">
            </div>

            <div class="form-group">
                <label for="price">Product Price</label>
                <input type="text" id="price" name="price" value="${p.price}">
            </div>

            <div class="form-group">
                <label for="category">Product Category</label>
                <input type="text" id="category" name="category" value="${p.category}">
            </div>

            <div class="buttons">
                <button type="submit" class="btn">Update</button>
                <a href="home"><button type="button" class="btn btn-back">Back</button></a>
            </div>
        </form>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}");
        </script>
    </c:if>
</body>
</html>
