<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Grocery Store</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f8ff; /* light blue background */
        color: #333;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    h1 {
        font-size: 48px;
        text-align: center;
        margin-bottom: 30px;
        color: #333;
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
        text-transform: uppercase; /* added to make text uppercase */
    }

    .navbar {
        width: 80%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
        gap: 20px;
    }

    .nav-item {
        background-color: rgba(255, 255, 255, 0.8);
        color: #333;
        padding: 25px;
        text-align: center;
        border-radius: 10px;
        width: calc(50% - 20px);
        transition: transform 0.3s ease, background-color 0.3s ease;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .nav-item:hover {
        transform: scale(1.05);
        background-color: rgba(255, 255, 255, 0.9);
    }

    .nav-item a {
        text-decoration: none;
        color: #333;
        font-size: 20px;
        font-weight: bold;
    }

    .nav-item a:hover {
        color: #0066cc; /* color change on hover */
    }

    @media (min-width: 600px) {
        .nav-item {
            width: calc(25% - 20px);
        }
    }

</style>
</head>
<body>

<h1>WELCOME TO THE ONLINE GROCERY STORE</h1> <!-- changed text to uppercase -->

<div class="navbar">
    <div class="nav-item">
        <a href="products">Add Product</a>
    </div>
    <div class="nav-item">
        <a href="allproducts">View All Products</a>
    </div>
    <div class="nav-item">
        <a href="loadSearchForm">Search Product</a>
    </div>
    <div class="nav-item">
        <a href="buy">Buy Product</a>
    </div>
</div>

</body>
</html>
