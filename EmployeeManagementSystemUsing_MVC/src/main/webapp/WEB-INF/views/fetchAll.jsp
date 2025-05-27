<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
        padding: 40px;
        text-align: center;
    }

    h1 {
        color: #333;
        margin-bottom: 30px;
    }

    table {
        margin: 0 auto;
        border-collapse: collapse;
        width: 80%;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 12px 16px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        font-size: 16px;
    }

    th {
        background-color: #007bff;
        color: white;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    a {
        margin-top: 30px;
        display: inline-block;
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    a:hover {
        color: #0056b3;
        text-decoration: underline;
    }
</style>
</head>
<body>
    <h1>EMPLOYEE DETAILS</h1>

    <table>
        <tr>
            <th>EMPLOYEE ID</th>
            <th>NAME</th>
            <th>PHONE NUMBER</th>
            <th>EMAIL</th>
        </tr>

        <c:forEach items="${employeelist}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.phone}</td>
                <td>${employee.email}</td>
            </tr>
        </c:forEach>
    </table>

    <br><br>
    <a href="index.jsp">← Back to Home</a>
</body>
</html>
