<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee Details</title>
<style>
	body {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		background-color: #f4f6f8;
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
		width: 480px;
		text-align: center;
	}

	h1 {
		color: #333;
		margin-bottom: 25px;
		font-size: 24px;
		font-weight: 600;
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 18px;
		text-align: left;
	}

	label {
		font-size: 15px;
		font-weight: 500;
		color: #444;
		margin-bottom: 5px;
	}

	input[type="number"],
	input[type="text"],
	input[type="email"] {
		padding: 10px;
		border: 1px solid #ccc;
		border-radius: 6px;
		font-size: 15px;
		width: 100%;
		box-sizing: border-box;
	}

	input[type="submit"] {
		padding: 12px;
		background-color: #28a745;
		color: white;
		border: none;
		border-radius: 6px;
		cursor: pointer;
		font-size: 16px;
		transition: background-color 0.3s ease;
		margin-top: 10px;
	}

	input[type="submit"]:hover {
		background-color: #218838;
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
		<h1>Edit Employee Details</h1>
		<form action="update">
			<div>
				<label for="id">Employee ID:</label>
				<input type="number" name="id" id="id" required>
			</div>

			<div>
				<label for="phone">New Phone Number:</label>
				<input type="number" name="phone" id="phone" required>
			</div>

			<div>
				<label for="name">New Name:</label>
				<input type="text" name="name" id="name" required>
			</div>

			<div>
				<label for="email">New Email:</label>
				<input type="email" name="email" id="email" required>
			</div>

			<input type="submit" value="Update Employee">
		</form>
		<a href="index.jsp">← Back to Home</a>
	</div>
</body>
</html>
