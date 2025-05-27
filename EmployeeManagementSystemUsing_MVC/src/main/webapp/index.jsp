<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #e3f2fd, #90caf9);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background-color: white;
        padding: 40px 60px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
        animation: fadeIn 1s ease;
    }

    h1 {
        margin-bottom: 40px;
        color: #0d47a1;
        font-size: 28px;
        text-transform: uppercase;
        letter-spacing: 1.5px;
    }

    .btn {
        display: block;
        width: 100%;
        padding: 14px 0;
        margin: 12px 0;
        font-size: 16px;
        color: white;
        background: linear-gradient(to right, #42a5f5, #1e88e5);
        border: none;
        border-radius: 10px;
        text-decoration: none;
        cursor: pointer;
        transition: transform 0.2s ease, background-color 0.3s ease;
        font-weight: bold;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .btn:hover {
        background-color: #1565c0;
        transform: scale(1.02);
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(30px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>
<div class="container">
    <h1>Employee Management System</h1>
    
    <a href="emp" class="btn">➕ ADD EMPLOYEE</a>
    <a href="view" class="btn">👁️ VIEW EMPLOYEE DETAILS</a>
    <a href="delete" class="btn">❌ DELETE EMPLOYEE DETAILS</a>
    <a href="edit" class="btn">✏️ EDIT EMPLOYEE DETAILS</a>
    <a href="displayAll" class="btn">📋 VIEW ALL EMPLOYEES</a>
</div>
</body>
</html>
