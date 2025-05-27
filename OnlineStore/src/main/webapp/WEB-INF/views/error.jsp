<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Not Found</title>
<style>
body {
font-family: 'Segoe UI', sans-serif;
background: linear-gradient(to right, #ffe0e0, #f8e1f4);
display: flex;
justify-content: center;
align-items: center;
height: 100vh;
margin: 0;
}

.error-container {
background: #fff;
padding: 40px;
border-radius: 16px;
box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
text-align: center;
max-width: 500px;
width: 90%;
}

.error-icon {
font-size: 50px;
color: #e53935;
margin-bottom: 20px;
}

.message {
color: #c62828;
font-size: 1.2rem;
margin-bottom: 20px;
}

a {
text-decoration: none;
font-weight: bold;
color: #4a148c;
font-size: 16px;
}

a:hover {
text-decoration: underline;
}
</style>
</head>
<body>

<div class="error-container">
<div class="error-icon">❌</div>
<div class="message">${message}</div>
<a href="index.jsp">🔍 Go Back to Search</a>
</div>

</body>
</html>
