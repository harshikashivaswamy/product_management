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
	<h1>Add Product</h1>
	<form action="add-product" method="post">
		Product Name: <input type="text" name="name"><br><br>
		Product Description: <input type="text" name="description"><br><br>
		Product Image Link: <input type="text" name="imageLink"><br><br>
		Product Price: <input type="text" name="price"><br><br>
		Product Category: <input type="text" name="category"><br><br>
		<button>Add</button>
	</form><br>
	
	<a href="home"><button>Back</button></a>
</div>

</body>
</html> --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Product</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            padding: 0;
            min-height: 600px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 2rem;
            text-align: center;
            font-size: 2.5rem;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }

        label {
            font-weight: 600;
            color: #34495e;
        }

        input[type="text"] {
            padding: 12px;
            border: 2px solid #e0e0e0;
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #3498db;
            outline: none;
        }

        .button {
            background: #3498db;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s ease;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 1px;
        }

        .button:hover {
            background: #2980b9;
        }

        .back-button {
            background: #95a5a6;
            margin-top: 1rem;
        }

        .back-button:hover {
            background: #7f8c8d;
        }

        .buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            margin-top: 1rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Product</h1>
        <form action="add-product" method="post">
            <div class="form-group">
                <label for="name">Product Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="description">Product Description</label>
                <input type="text" id="description" name="description" required>
            </div>

            <div class="form-group">
                <label for="imageLink">Product Image Link</label>
                <input type="text" id="imageLink" name="imageLink" required>
            </div>

            <div class="form-group">
                <label for="price">Product Price</label>
                <input type="text" id="price" name="price" required>
            </div>

            <div class="form-group">
                <label for="category">Product Category</label>
                <input type="text" id="category" name="category" required>
            </div>

            <div class="buttons">
                <button type="submit" class="button">Add Product</button>
                <a href="home"><button type="button" class="button back-button">Back</button></a>
            </div>
        </form>
    </div>
</body>
</html>
