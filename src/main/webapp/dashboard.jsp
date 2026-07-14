<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<link rel="stylesheet" href="css/style.css">

<style>
body {
	font-family: Arial, sans-serif;
	background: #f2f2f2;
	margin: 0;
	padding: 0;
}

.container {
	width: 600px;
	margin: 50px auto;
	background: white;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	text-align: center;
}

h1 {
	color: #007bff;
}

a {
	display: block;
	width: 220px;
	margin: 15px auto;
	padding: 12px;
	text-decoration: none;
	color: white;
	background: #007bff;
	border-radius: 5px;
	font-size: 18px;
}

a:hover {
	background: #0056b3;
}
</style>

</head>

<body>

	<div class="container">

		<h1>Security Incident Report Generator</h1>

		<h2>Dashboard</h2>

		<p>Welcome to the Dashboard</p>

		<a href="report.jsp">Generate Report</a> <a href="viewReports.jsp">View
			Reports</a> <a href="login.jsp">Logout</a>

	</div>

</body>
</html>