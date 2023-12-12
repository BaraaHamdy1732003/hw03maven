<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
			background-color: #000000;
		}

		.container {
			max-width: 400px;
			margin: 20px auto;
			text-align: center;
		}

		.form-container {
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}

		.form-group {
			margin-bottom: 15px;
		}

		.form-group label {
			display: block;
			font-size: 14px;
			margin-bottom: 5px;
			color: #333;
		}

		.form-group input {
			width: 100%;
			padding: 10px;
			font-size: 14px;
			border: 1px solid #ccc;
			border-radius: 5px;
			box-sizing: border-box;
		}

		.button {
			display: inline-block;
			padding: 10px 20px;
			text-decoration: none;
			color: #fff;
			background-color: #007bff;
			border-radius: 5px;
			font-size: 16px;
			transition: background-color 0.3s;
		}

		.button:hover {
			background-color: #0056b3;
		}

		.back-link {
			display: block;
			margin-top: 10px;
			font-size: 12px;
			color: #007bff;
		}

		.back-link:hover {
			text-decoration: underline;
		}
	</style>
</head>
<body>
<div class="container">
	<div class="form-container">
		<form action="/register" method="post">
			<div class="form-group">
				<label for="firstName">First Name:</label>
				<input type="text" id="firstName" name="firstName" required>
			</div>
			<div class="form-group">
				<label for="lastName">Last Name:</label>
				<input type="text" id="lastName" name="lastName" required>
			</div>
			<div class="form-group">
				<label for="age">Age:</label>
				<input type="number" id="age" name="age" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone:</label>
				<input type="tel" id="phone" name="phone" required>
			</div>
			<a href="/login" ><button type="submit" class="button">Register</button>
		</a></form>
		<a href="/login" class="back-link">Already have an account? Login here.</a>
	</div>
</div>
</body>
</html>
