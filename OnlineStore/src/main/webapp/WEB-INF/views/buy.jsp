<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Product</title>
<style>
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(to right, #e0f7fa, #f3e5f5);
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.purchase-card {
	background: white;
	padding: 40px;
	border-radius: 16px;
	box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
	width: 400px;
}

h2 {
	text-align: center;
	color: #6a1b9a;
	margin-bottom: 30px;
}

label {
	display: block;
	font-weight: 600;
	color: #4a148c;
	margin-bottom: 6px;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 10px;
	border-radius: 10px;
	border: 1px solid #ccc;
	margin-bottom: 20px;
	font-size: 1rem;
}

input[type="submit"] {
	width: 100%;
	padding: 12px;
	background-color: #ab47bc;
	color: white;
	border: none;
	font-size: 1rem;
	border-radius: 10px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #8e24aa;
}

.back-link {
	display: block;
	text-align: center;
	margin-top: 20px;
	text-decoration: none;
	color: #4a148c;
	font-weight: bold;
}

.back-link:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div class="purchase-card">
		<h2>Purchase Product</h2>
		<form action="buy" method="post">
			<label for="name">Product Name</label> <input type="text" id="name"
				name="name" placeholder="Enter product name" required /> <label
				for="stockQuantity">Quantity</label> <input type="number"
				id="stockQty" name="stockQty" placeholder="Enter quantity" required />
			<input type="submit" value="Purchase Product" />
		</form>
		<a href="sell" class="button">💳 Proceed to Payment</a> <a
			class="back-link" href="index.jsp">← Back to Home</a>
	</div>

</body>
</html>
