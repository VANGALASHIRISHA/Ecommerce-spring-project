<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .list-container {
            width: 80%;
            max-width: 900px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.15);
            padding: 20px 30px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-left: auto;
            margin-right: auto;
        }
        table th, table td {
            border: 1px solid #ccc;
            padding: 12px 15px;
            text-align: center;
        }
        table th {
            background-color: #007bff;
            color: #fff;
            text-transform: uppercase;
        }
        table tr:nth-child(even) {
            background: #f9f9f9;
        }
        .actions a {
            margin: 0 6px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        .actions a:hover {
            text-decoration: underline;
        }
        .top-bar {
            text-align: center;
            margin-bottom: 15px;
        }
        .top-bar a {
            background: #28a745;
            color: white;
            padding: 10px 18px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
        }
        .top-bar a:hover {
            background: #218838;
        }
    </style>
</head>
<body>

<div class="list-container">
    <h2>Product List</h2>

    <div class="top-bar">
        <a href="${pageContext.request.contextPath}/prd/add">Add New Product</a>
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>

        <c:forEach items="${products}" var="p">
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td class="actions">
                    <a href="${pageContext.request.contextPath}/prd/edit/${p.id}">Edit</a>
                    |
                    <a href="${pageContext.request.contextPath}/prd/delete/${p.id}"
                       onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
