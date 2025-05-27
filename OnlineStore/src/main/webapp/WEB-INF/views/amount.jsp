<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Confirmation</title>
<style>
body {
	background: linear-gradient(135deg, #e79e8a 0%, #9607ee 100%);
	font-family: 'Segoe UI', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.ticket {
	background: white;
	width: 500px;
	padding: 40px 30px;
	border-radius: 20px;
	box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
	text-align: center;
	animation: slideIn 0.6s ease-out;
}

@keyframes slideIn {
	from { transform: translateY(50px); opacity: 0; }
	to { transform: translateY(0); opacity: 1; }
}

.message {
	font-size: 1.3rem;
	color: #4a148c;
	font-weight: bold;
	margin-bottom: 25px;
}

.stamp {
	display: inline-block;
	background-color: #43a047;
	color: white;
	padding: 12px 24px;
	border-radius: 20px;
	font-size: 1.1rem;
	font-weight: bold;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
	margin-bottom: 25px;
}

.payment-info {
	background-color: #e8f5e9;
	color: #1b5e20;
	padding: 14px 20px;
	border-radius: 16px;
	display: inline-block;
	font-size: 1.05rem;
	font-weight: bold;
	margin-bottom: 25px;
	box-shadow: inset 0 0 5px rgba(0,0,0,0.05);
}

.qr-icon {
	font-size: 2.5rem;
	margin-bottom: 10px;
	color: #616161;
}

.home-link {
	display: inline-block;
	text-decoration: none;
	color: #4a148c;
	font-weight: bold;
	font-size: 1.1rem;
	margin-top: 25px;
	transition: all 0.3s ease;
}

.home-link:hover {
	text-decoration: underline;
	color: #6a1b9a;
}
</style>
</head>
<body>

	<div class="ticket">
		<p class="message">${amountmsg}</p>

		<div class="stamp">✅ Purchase Confirmed</div>

		<div class="qr-icon">💵 📲</div>

		<div class="payment-info">
			Payment Mode: Hand Cash / Online via QR Code
		</div>

		<a class="home-link" href="index.jsp">🏠 Back to Home</a>
	</div>

</body>
</html>
