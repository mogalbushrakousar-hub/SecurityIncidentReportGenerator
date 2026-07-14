<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="dao.ReportDAO"%>
<%@ page import="model.Report"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Reports</title>

<link rel="stylesheet" href="css/style.css">

<style>
body {
	font-family: Arial, sans-serif;
	background: #f2f2f2;
	margin: 0;
	padding: 20px;
}

.container {
	width: 90%;
	margin: auto;
	background: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h2 {
	text-align: center;
	color: #007bff;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

table, th, td {
	border: 1px solid #000;
}

th {
	background: #007bff;
	color: white;
	padding: 10px;
}

td {
	padding: 10px;
	text-align: center;
}

a {
	display: inline-block;
	margin-top: 20px;
	text-decoration: none;
	background: #007bff;
	color: white;
	padding: 10px 20px;
	border-radius: 5px;
}

a:hover {
	background: #0056b3;
}
</style>

</head>
<body>

	<div class="container">

		<h2>All Security Incident Reports</h2>

		<table>

			<tr>
				<th> ID</th>
				<th>Incident Type</th>
				<th>Description</th>
				<th>Location</th>
				<th>Date</th>
				<th>Status</th>
			</tr>

			<%
ReportDAO dao = new ReportDAO();
List<Report> reports = dao.getAllReports();

for(Report report : reports){
%>

<tr>
    <td><%= report.getReportId() %></td>
    <td><%= report.getIncidentType() %></td>
    <td><%= report.getDescription() %></td>
    <td><%= report.getLocation() %></td>
    <td><%= report.getDate() %></td>
    <td><%= report.getStatus() %></td>
</tr>

<%
}
%>

		</table>

		<br> <a href="dashboard.jsp">Back to Dashboard</a>

	</div>

</body>
</html>