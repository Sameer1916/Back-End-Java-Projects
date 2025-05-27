<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Employee Details</title>
<style>
	body {
		font-family: Arial, sans-serif;
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
		padding: 40px;
		border-radius: 10px;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		text-align: center;
		width: 400px;
	}

	h1 {
		color: #333;
		margin-bottom: 30px;
		font-size: 24px;
	}

	form {
		display: flex;
		flex-direction: column;
		gap: 15px;
	}

	label {
		font-weight: bold;
		text-align: left;
	}

	input[type="text"] {
		padding: 10px;
		border: 1px solid #ccc;
		border-radius: 5px;
		font-size: 14px;
	}

	input[type="submit"] {
		padding: 10px;
		background-color: #007bff;
		color: white;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		font-size: 16px;
		transition: background-color 0.3s ease;
	}

	input[type="submit"]:hover {
		background-color: #0056b3;
	}

	a {
		display: inline-block;
		margin-top: 20px;
		color: #007bff;
		text-decoration: none;
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
		<h1>Search Employee ID</h1>
		<form:form action="display" modelAttribute="employee">
			<form:label path="id">Enter the Employee ID to view details:</form:label>
			<form:input path="id" />
			<input type="submit" value="Search">
		</form:form>
		<a href="index.jsp">← Back to Home</a>
	</div>
</body>
</html>
