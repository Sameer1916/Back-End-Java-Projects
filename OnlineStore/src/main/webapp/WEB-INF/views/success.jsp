<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Success - Online Grocery Store</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eafaf1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .message-box {
            text-align: center;
            padding: 30px 50px;
            border: 2px solid #4CAF50;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .message-box h2 {
            color: #4CAF50;
        }
        .message-box a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .message-box a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="message-box">
        <h2>${msg}</h2>
        <a href="products">Add Another Product</a><br><br>
        <a href="allproducts">View All Products</a>
    </div>
</body>
</html>
