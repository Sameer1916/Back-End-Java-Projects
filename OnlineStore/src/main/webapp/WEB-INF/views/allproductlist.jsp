<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products - Online Grocery Store</title>
<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(to right, #e1f5fe, #fce4ec);
	margin: 0;
	padding: 40px;
}

.container {  
	max-width: 1000px;
	margin: auto;
	background: white;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #4a148c;
	margin-bottom: 30px;
}

table {
	width: 100%;
	border-collapse: collapse;
	font-size: 1rem;
}

th, td {
	padding: 12px 15px;
	text-align: left;
}

th {
	background-color: #ab47bc;
	color: white;
}

tr:nth-child(even) {
	background-color: #f3e5f5;
}

tr:hover {
	background-color: #e1bee7;
}

a.home-link {
	display: inline-block;
	margin-top: 30px;
	text-decoration: none;
	font-weight: bold;
	color: #4a148c;
}

a.home-link:hover {
	text-decoration: underline;
}

@media ( max-width : 768px) {
	table, th, td {
		font-size: 0.9rem;
	}
}
</style>
</head>
<body>

	<div class="container">
		<h2>🛒 Online Grocery Product List</h2>

		<table>
			<tr>
				<th>Store ID</th>
				<th>Product Name</th>
				<th>Category</th>
				<th>Price</th>
				<th>Stock Quantity</th>
			</tr>
			<c:forEach items="${allonlinestore}" var="onlineStore">
				<tr>
					<td>${onlineStore.productId}</td>
					<td>${onlineStore.name}</td>
					<td>${onlineStore.category}</td>
					<td>₹${onlineStore.price}</td>
					<td>${onlineStore.stockQuantity}</td>
				</tr>
			</c:forEach>
		</table>

		<a class="home-link" href="index.jsp">← Back to Home</a>
	</div>

</body>
</html>
