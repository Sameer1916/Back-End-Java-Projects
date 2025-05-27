<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEARCHING EMPLOYEE DETAILS</title>
<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #e0eafc, #cfdef3);
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
    }

    h1 {
        color: #333;
        margin-bottom: 30px;
        font-size: 28px;
    }

    table {
        border-collapse: collapse;
        width: 90%;
        max-width: 700px;
        background-color: #ffffff;
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 16px 20px;
        text-align: center;
        font-size: 16px;
    }

    th {
        background-color: #007BFF;
        color: white;
        font-weight: 600;
    }

    td {
        color: #333;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e6f0ff;
    }

    .home-link {
        display: inline-block;
        margin-top: 30px;
        padding: 12px 24px;
        background-color: #007BFF;
        color: white;
        text-decoration: none;
        font-weight: bold;
        border-radius: 6px;
        transition: background-color 0.3s ease;
    }

    .home-link:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <h1>EMPLOYEE DETAILS</h1>
    <table>
        <tr>
            <th>EMPLOYEE ID</th>
            <th>EMPLOYEE NAME</th>
            <th>PHONE NUMBER</th>
            <th>EMAIL ID</th>
        </tr>
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.phone}</td>
            <td>${employee.email}</td>
        </tr>
    </table>

    <a class="home-link" href="index.jsp">Home</a>
</body>
</html>
