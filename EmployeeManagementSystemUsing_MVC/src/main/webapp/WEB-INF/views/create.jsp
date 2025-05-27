<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD EMPLOYEE</title>
<style>
    body {
        background-color: #f2f4f7;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .form-container {
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 500px;
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
    }

    label {
        font-weight: bold;
        display: block;
        margin-bottom: 6px;
        color: #555;
    }

    input[type="text"],
    input[type="email"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
        transition: border-color 0.3s;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="number"]:focus {
        border-color: #007BFF;
        outline: none;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        padding: 12px 20px;
        font-size: 16px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .home-button {
        text-align: center;
        margin-top: 20px;
    }

    .home-button a {
        display: inline-block;
        text-decoration: none;
        background-color: #6c757d;
        color: #fff;
        padding: 10px 20px;
        border-radius: 8px;
        font-size: 14px;
        transition: background-color 0.3s ease;
    }

    .home-button a:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>
<div class="form-container">
    <h1>ADD EMPLOYEE DETAILS</h1>
    <form:form action="save" modelAttribute="employee">

        <form:label path="id">Employee ID</form:label>
        <form:input path="id" placeholder="Enter employee ID" value="" />

        <form:label path="name">Employee Name</form:label>
        <form:input path="name" placeholder="Enter full name" />

        <form:label path="phone">Phone Number</form:label>
        <form:input path="phone" placeholder="Enter 10-digit phone number" />

        <form:label path="email">Email</form:label>
        <form:input path="email" placeholder="Enter email address" />

        <input type="submit" value="Add Employee">
    </form:form>

    <div class="home-button">
        <a href="index.jsp">HOME</a>
    </div>
</div>
</body>
</html>
