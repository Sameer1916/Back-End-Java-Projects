<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
    <style>
        .product-box {
            width: 300px;
            margin: auto;
            padding: 20px;
            border: 1px solid #aaa;
            border-radius: 10px;
            background-color: #f9f9f9;
            font-family: Arial;
        }
        .product-box h2 {
            text-align: center;
            color: green;
        }
        .product-box p {
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="product-box">
        <h2>Product Information</h2>
        <p><strong>ID:</strong> ${product.id}</p>
        <p><strong>Name:</strong> ${product.name}</p>
        <p><strong>Category:</strong> ${product.category}</p>
        <p><strong>Price:</strong> ₹${product.price}</p>
        <p><strong>Stock:</strong> ${product.stockQuantity}</p>
    </div>
</body>
</html>