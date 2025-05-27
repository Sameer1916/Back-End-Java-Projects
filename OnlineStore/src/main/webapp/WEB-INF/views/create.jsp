<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Grocery Product</title>
<style>
body {
    background-color: #f5f5dc;
    font-family: 'Courier New', Courier, monospace;
    margin: 0;
    padding: 45px 0;
    display: flex;
    justify-content: center;
}

.receipt {
    background-color: #ffffff;
    width: 400px; /* Reduced width to fit without scroll */
    padding: 40px 30px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    border: 2px dashed #999;
}

h1 {
    text-align: center;
    font-size: 1.8rem;
    border-bottom: 2px dashed #999;
    padding-bottom: 10px;
    margin-bottom: 30px;
}

h2 {
    text-align: center;
    font-size: 1.2rem;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 6px;
    font-weight: bold;
    letter-spacing: 1px;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 8px;
    border: 1px solid #aaa;
    background-color: #fdfdfd;
    font-family: 'Courier New', Courier, monospace;
    font-size: 1rem;
    margin-bottom: 20px;
}

input[type="submit"] {
    width: 100%;
    background-color: black;
    color: white;
    padding: 10px;
    font-size: 1.1rem;
    border: none;
    cursor: pointer;
    font-weight: bold;
}

input[type="submit"]:hover {
    background-color: #333;
}

.links {
    text-align: center;
    margin-top: 20px;
}

.links a {
    text-decoration: none;
    margin: 0 10px;
    color: #555;
    font-size: 0.95rem;
}

.links a:hover {
    color: #000;
    text-decoration: underline;
}
</style>
</head>
<body>
<div class="receipt">
    <h1>🧾 Add Product Receipt</h1>
    <h2>ADD ONLINE STORE DETAILS HERE ...</h2>

    <form:form action="save" modelAttribute="onlinestore">
        <form:label path="name">ENTER PRODUCT NAME :</form:label>
        <form:input path="name" />
        <br><br>

        <form:label path="category">ENTER PRODUCT CATEGORY :</form:label>
        <form:input path="category" />
        <br><br>

        <form:label path="price">ENTER PRODUCT PRICE :</form:label>
        <form:input path="price" />
        <br><br>

        <form:label path="stockQuantity">ENTER STOCK QUANTITY :</form:label>
        <form:input path="stockQuantity" />
        <br><br>

        <input type="submit" value="ADD ONLINE GROCERY STORE">
    </form:form>

    <div class="links">
        <a href="index.jsp">🏠 Home</a>
        <a href="${pageContext.request.contextPath}/">↩ Back</a>
    </div>
</div>
</body>
</html>
