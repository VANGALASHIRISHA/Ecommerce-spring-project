<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }
        form input[type="text"],
        form input[type="number"] {
            width: 100%;
            padding: 10px 12px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        form input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        form input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Update Product</h2>
    <form action="${pageContext.request.contextPath}/prd/update" method="post">
        <input type="hidden" name="id" value="${product.id}" />

        Name:
        <input type="text" name="name" value="${product.name}" placeholder="Enter product name" required 
               pattern="[A-Za-z0-9 ]{2,50}" title="Only letters, numbers, spaces, 2-50 chars" />

        Price:
        <input type="number" step="0.01" name="price" value="${product.price}" placeholder="Enter product price" required 
               min="0.01" max="100000" title="Price must be positive" />

        <input type="submit" value="Update Product" />
    </form>
    <a class="back-link" href="${pageContext.request.contextPath}/prd/list">Back to Product List</a>
</div>

</body>
</html>
