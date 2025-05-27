<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Employee Details</title>
<style>
	body {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		background-color: #f0f2f5;
		margin: 0;
		padding: 0;
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}

	.container {
		background-color: #ffffff;
		padding: 40px 30px;
		border-radius: 12px;
		box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
		width: 420px;
		text-align: center;
	}

	h1 {
		color: #e63946;
		margin-bottom: 25px;
		font-size: 24px;
		font-weight: 600;
		letter-spacing: 0.5px;
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 15px;
	}

	label {
		font-size: 16px;
		font-weight: 500;
		color: #333;
		text-align: left;
	}

	input[type="number"] {
		padding: 10px;
		border: 1px solid #ccc;
		border-radius: 6px;
		font-size: 16px;
	}

	input[type="submit"] {
		padding: 12px;
		background-color: #e63946;
		color: white;
		border: none;
		border-radius: 6px;
		cursor: pointer;
		font-size: 16px;
		transition: background-color 0.3s ease;
	}

	input[type="submit"]:hover {
		background-color: #d62839;
	}

	a {
		display: inline-block;
		margin-top: 20px;
		text-decoration: none;
		color: #007bff;
		font-weight: 500;
		font-size: 14px;
		transition: color 0.3s;
	}

	a:hover {
		color: #0056b3;
		text-decoration: underline;
	}
</style>
</head>
<body>
	<div class="container">
		<b><h1>DELETE EMPLOYEE DETAILS</h1></b>
		<form action="remove">
			<label for="id">Enter Employee ID:</label>
			<input type="number" name="id" id="id" required>
			<input type="submit" value="Delete Employee">
		</form>
		<a href="index.jsp">← Back to Home</a>
	</div>
</body>
</html>
