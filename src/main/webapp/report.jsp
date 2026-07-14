<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report Security Incident</title>

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<center>

<h2>Security Incident Report Form</h2>

<form action="ReportServlet" method="post">

<table>

<tr>
<td>Incident Type</td>
<td>
<select name="incidentType" required>
<option value="">Select</option>
<option>Phishing</option>
<option>Malware</option>
<option>Data Breach</option>
<option>Unauthorized Access</option>
<option>Network Attack</option>
<option>Other</option>
</select>
</td>
</tr>

<tr>
<td>Description</td>
<td>
<textarea name="description" rows="5" cols="30" required></textarea>
</td>
</tr>

<tr>
<td>Location</td>
<td>
<input type="text" name="location" required>
</td>
</tr>

<tr>
<td>Date</td>
<td>
<input type="date" name="date" required>
</td>
</tr>

<tr>
<td>Status</td>
<td>
<select name="status">
<option>Pending</option>
<option>In Progress</option>
<option>Resolved</option>
</select>
</td>
</tr>

<tr>
<td colspan="2" align="center">

<input type="submit" value="Submit Report">

<input type="reset" value="Clear">

</td>
</tr>

</table>

</form>

<br>

<a href="dashboard.jsp">Back to Dashboard</a>

</center>

</body>
</html>