
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Receipt</title>
<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(to right, #d1c4e9, #f8bbd0);
	margin: 0;
	padding: 40px;
	color: #333;
}

.container {
	background: #fff;
	max-width: 700px;
	margin: auto;
	padding: 30px 40px;
	border-radius: 15px;
	box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
	text-align: center;
}

h2 {
	color: #4caf50;
	font-size: 28px;
	margin-bottom: 20px;
}

#Receipt p {
	font-size: 18px;
	margin: 10px 0;
}

table {
	width: 100%;
	margin-top: 20px;
	border-collapse: collapse;
}

th, td {
	padding: 12px 15px;
	border-bottom: 1px solid #ddd;
	text-align: left;
}

th {
	background-color: #ba68c8;
	color: white;
}

tr:nth-child(even) {
	background-color: #f3e5f5;
}

.button {
	display: inline-block;
	margin: 20px 10px;
	padding: 10px 20px;
	background-color: #7b1fa2;
	color: white;
	text-decoration: none;
	border-radius: 10px;
	font-weight: bold;
	transition: background-color 0.3s ease;
}

.button:hover {
	background-color: #6a1b9a;
}

.footer {
	margin-top: 40px;
	font-size: 16px;
	color: #6d4c41;
}
</style>
</head>
<body>

	<div class="container">
		<h2>✅ Purchase Successful</h2>

	
		 <h2>${msg}</h2>
    <p><strong>Product:</strong> ${purchaseName}</p>
    <p><strong>Quantity Purchased:</strong> ${purchaseStockQnty}</p>
    <p><strong>Price per Unit:</strong> ${purchasePrice}</p>
    <p><strong>Total Cost:</strong> ${totalCost}</p>
    <p><strong>Remaining Stock:</strong> ${remainingStock}</p>
		

		<a href="sell" class="button">💳 Proceed to Payment</a> <a
			href="index.jsp" class="button">🏠 Back to Home</a>

		<div class="footer">
			<p>Thank you for shopping with us! 🛒</p>
		</div>
	</div>

</body>
</html>
