<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            width: 400px;
        }
        input[type="number"],
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background: #28a745;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background: #218838;
        }
        .back-link {
            margin-top: 15px;
            text-align: center;
        }
        .back-link a {
            text-decoration: none;
            color: #007bff;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Add New Product</h2>
    <form action="${pageContext.request.contextPath}/prd/addprd" method="post">

        <!-- MANUAL ID FIELD -->
        ID: <input type="number" name="id" placeholder="Enter product ID" required />

        Name: <input type="text" name="name" placeholder="Enter product name" required />

        Price: <input type="number" step="0.01" name="price" placeholder="Enter product price" required />

        <input type="submit" value="Save Product" />
    </form>

    <div class="back-link">
        <a href="${pageContext.request.contextPath}/prd/list">Back to Product List</a>
    </div>
</div>

</body>
</html>
