<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome | Product Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        .container {
            background: #ffffff;
            padding: 40px 60px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            max-width: 450px;
            width: 90%;
        }
        h1 {
            color: #333333;
            margin-bottom: 20px;
        }
        .btn {
            display: block;
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 16px;
            margin: 15px auto;
            width: 80%;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Product Management</h1>

    <a class="btn" href="${pageContext.request.contextPath}/prd/add">Add New Product</a>
    <a class="btn" href="${pageContext.request.contextPath}/prd/list">View Product List</a>
</div>

</body>
</html>
