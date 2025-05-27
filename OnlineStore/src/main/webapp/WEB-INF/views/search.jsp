<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 15px;
            text-align: center;
            font-size: 16px;
        }
        th {
            background-color: #007bff;
            color: white;
            text-transform: uppercase;
        }
        td {
            background-color: #f9f9f9;
        }
        tr:nth-child(even) td {
            background-color: #f1f1f1;
        }
        tr:hover {
            background-color: #e9ecef;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Online Store Product Details</h1>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>

            <c:forEach var="product" items="${onlinestore}">
                <tr>
                    <td>${product.name}</td>
                    <td>${product.category}</td>
                    <td>${product.price}</td>
                    <td>${product.stockQuantity}</td>
                </tr>
            </c:forEach>
        </table>

        <a href="index.jsp">Go to Home</a>
    </div>

</body>
</html>
