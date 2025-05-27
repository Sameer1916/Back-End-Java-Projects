<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Buy Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        h2 {
            text-align: center;
            color: #007bff;
        }
        label {
            font-weight: bold;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0 20px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Buy a Product</h2>
        <form action="buyproduct" method="get">
            <label for="name">Product Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="stockQty">Quantity:</label>
            <input type="number" id="stockQty" name="stockQty" required>

            <input type="submit" value="Buy Product">
        </form>
         <div class="footer">Online Grocery Store © 2025</div>
    </div>

</body>
</html>
