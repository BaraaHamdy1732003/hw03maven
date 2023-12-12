<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		body {
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			margin: 0;
			padding: 0;
			background-color: #000; /* Set background color to black */
		}

		.container {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}

		.form-container {
			background-color: #fff;
			padding: 30px;
			border-radius: 10px;
			box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
			width: 400px;
			box-sizing: border-box;
		}

		.form-table {
			width: 100%;
		}

		.form-group {
			margin-bottom: 20px;
		}

		.form-group label {
			display: block;
			font-size: 16px;
			margin-bottom: 10px;
			color: #333;
		}

		.form-group input {
			width: 100%;
			padding: 10px;
			font-size: 16px;
			border: 1px solid #ccc;
			border-radius: 5px;
			box-sizing: border-box;
		}

		.button-container {
			text-align: center;
		}

		.button {
			padding: 12px 20px;
			text-decoration: none;
			color: #fff;
			background-color: #4caf50;
			border-radius: 5px;
			font-size: 18px;
			transition: background-color 0.3s;
			cursor: pointer;
		}

		.button:hover {
			background-color: #45a049;
		}

		.register-link {
			display: block;
			margin-top: 20px;
			font-size: 14px;
			color: #007bff;
			text-align: center;
		}

		.register-link:hover {
			text-decoration: underline;
		}
	</style>
</head>
<body>
<div class="container">
	<div class="form-container">
		<form action="/login" method="post" class="form-table">
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" id="password" name="password" required>
			</div>
			<div class="button-container">
				<button type="submit" class="button">Login</button>
			</div>
		</form>
		<a href="/register" class="register-link">Don't have an account? Register here.</a>
	</div>
</div>
</body>
</html>
