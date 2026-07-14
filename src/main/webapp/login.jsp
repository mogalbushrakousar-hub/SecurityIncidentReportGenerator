<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link rel="stylesheet" href="css/style.css">

<style>
.container {
	width: 350px;
	margin: 80px auto;
	text-align: center;
	border: 1px solid #ccc;
	padding: 20px;
	border-radius: 8px;
	background: #f9f9f9;
}

table {
	margin: auto;
}

td {
	padding: 8px;
}

input {
	padding: 6px;
	width: 180px;
}

button {
	padding: 8px 20px;
	background: #007bff;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background: #0056b3;
}
</style>

</head>
<body>

	<div class="container">

		<h2>Security Incident Report Generator</h2>

		<form action="LoginServlet" method="post">

			<table>

				<tr>
					<td>Username</td>
					<td><input type="text" name="username" required></td>
				</tr>

				<tr>
					<td>Password</td>
					<td><input type="password" name="password" required></td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<button type="submit">Login</button>
					</td>
				</tr>

			</table>

		</form>

	</div>

</body>
</html>