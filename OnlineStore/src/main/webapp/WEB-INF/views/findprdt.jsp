<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Products - Online Grocery Store</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(120deg, #fdfbfb, #ebedee);
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            font-size: 2.2rem;
            padding-top: 30px;
        }

        .search-form {
            background-color: white;
            width: 90%;
            max-width: 600px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.08);
        }

        .search-form form {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 15px;
        }

        .search-form input[type="text"] {
            width: 100%;
            padding: 12px 16px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 1rem;
        }

        .search-form .or-divider {
            font-weight: bold;
            color: #888;
        }

        .search-form input[type="submit"] {
            background-color: #27ae60;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .search-form input[type="submit"]:hover {
            background-color: #2ecc71;
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            gap: 25px;
        }

        .product-card {
            background-color: #ffffff;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
            padding: 20px;
            width: 240px;
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-8px);
        }

        .product-card h3 {
            color: #2980b9;
            font-size: 1.4rem;
            margin: 0 0 10px;
        }

        .product-card p {
            color: #555;
            margin: 5px 0;
        }

        .product-card .price {
            color: #27ae60;
            font-weight: bold;
            font-size: 1.2rem;
        }

        .no-products {
            text-align: center;
            font-size: 1.2rem;
            color: #888;
            margin-top: 50px;
        }

        .back-link {
            display: block;
            text-align: center;
            margin: 50px 0 30px;
            text-decoration: none;
            color: #34495e;
            font-weight: bold;
            font-size: 1.2rem;
            transition: color 0.3s;
        }

        .back-link:hover {
            color: #2c3e50;
        }
    </style>
</head>
<body>

    <h2>🔍 Search Products by Name or Category</h2>

    <!-- Search Form -->
    <div class="search-form">
        <form action="searchprdt" method="get">
            <input type="text" name="name" placeholder="🔤 Enter Product Name">
            <div class="or-divider">— OR —</div>
            <input type="text" name="category" placeholder="📦 Enter Product Category">
            <input type="submit" value="Search">
        </form>
    </div>
   
    <!-- Display All Products -->
    <div class="product-container">
        <c:forEach var="product" items="${onlineStore}">
            <div class="product-card">
                <h3>${product.name}</h3>
                <p>📂 Category: ${product.category}</p>
                <p class="price">💲${product.price}</p>
                <p>📦 Stock: ${product.stockQuantity}</p>
            </div>
        </c:forEach>
    </div>

    <!-- Back to Home Link -->
    <a class="back-link" href="index.jsp">← Back to Home</a>

</body>
</html>
