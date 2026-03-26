<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>

<style>

/* Background */
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #43cea2, #185a9d);
	margin: 0;
	padding: 0;
}

/* Container */
.container {
	width: 90%;
	margin: 40px auto;
	background: white;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.2);
}

/* Heading */
h2 {
	text-align: center;
	margin-bottom: 20px;
}

/* Table */
table {
	width: 100%;
	border-collapse: collapse;
}

/* Header */
th {
	background: #185a9d;
	color: white;
	padding: 10px;
}

/* Rows */
td {
	padding: 10px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

/* Hover row */
tr:hover {
	background-color: #f5f5f5;
}

/* Buttons */
.action a {
	text-decoration: none;
	padding: 5px 10px;
	border-radius: 5px;
	color: white;
	margin: 2px;
}

/* Edit */
.edit {
	background: #28a745;
}

/* Delete */
.delete {
	background: #dc3545;
}

/* Bottom links */
.links {
	text-align: center;
	margin-top: 20px;
}

.links a {
	display: inline-block;
	margin: 10px;
	padding: 10px 15px;
	background: #185a9d;
	color: white;
	text-decoration: none;
	border-radius: 6px;
}

.links a:hover {
	background: #0f3c73;
}
</style>

</head>

<body>

	<div class="container">

		<h2>Student List</h2>

		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>DOB</th>
				<th>Gender</th>
				<th>State</th>
				<th>Centre</th>
				<th>Accepted</th>
				<th>Action</th>
			</tr>

			<c:forEach var="s" items="${students}">
				<tr>
					<td>${s.id}</td>
					<td>${s.firstName}${s.lastName}</td>
					<td>${s.dob}</td>
					<td>${s.gender}</td>
					<td>${s.state}</td>
					<td>${s.centre}</td>
					<td>${s.accept}</td>

					<td class="action"><a href="edit/${s.id}" class="edit">Edit</a>
						<a href="delete/${s.id}" class="delete"
						onclick="return confirm('Are you sure?')">Delete</a></td>

				</tr>
			</c:forEach>

		</table>

		<div class="links">
			<a href="register">➕ Add New</a> <a
				href="${pageContext.request.contextPath}/">⬅ Back to Home</a> <a
				href="javascript:history.back()">⬅ Go Back</a>
		</div>

	</div>

</body>
</html>