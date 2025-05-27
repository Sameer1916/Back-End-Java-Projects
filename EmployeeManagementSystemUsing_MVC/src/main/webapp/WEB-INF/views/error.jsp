<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f6f8;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 500px;
    }

    .message {
        font-size: 18px;
        color: #333;
        font-weight: 500;
        margin-bottom: 20px;
    }

    a {
        text-decoration: none;
        color: #007bff;
        font-weight: 500;
        font-size: 14px;
        transition: color 0.3s ease;
    }

    a:hover {
        color: #0056b3;
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="message">${message}</div>
        <a href="index.jsp">← Back to Home</a>
    </div>
</body>
</html>
