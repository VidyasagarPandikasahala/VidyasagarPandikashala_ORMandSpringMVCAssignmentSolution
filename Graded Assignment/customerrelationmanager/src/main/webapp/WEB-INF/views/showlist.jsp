<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<head>
 <title>Customer Relation Management</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<Style>
body {
	background-color: offwhite
}

h1 {
	text-align: center;
	color: wheat;
}

.delete-button{
 margin-left: 5px;
}
p {
	text-align: center;
	color: white;
}

.tablestyle {
	text-align: center;
}
</Style>
<body>
	<div class="container-fluid p-3 my-3 bg-dark text-white">
		<h1>Customer Relation Management</h1>
		
	</div>
	<button type="button" class="btn btn-outline-dark">
		<a href="/customerrelationmanager">Home</a>
	</button>
	<button type="button" class="btn btn-outline-dark">
		<a href="add">Add Participants</a>
	</button>

	<div class="container-fluid">
		<h2 class="tablestyle">Participants Data</h2>
		<p>The .table-dark class adds a black background to the table:</p>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>S.No</th>
					<th>First Name</th>
					<th>LastName</th>
					<th>E-Mail</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach var="customer" items="${customers}" varStatus="c">
				<tbody>
					<tr>
						<td>${c.count}</td>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
						<td>${customer.email}</td>
						<td><a class="btn btn-outline-warning"
							href="edit?id=${customer.customerId}">Update </a> <a
							class="delete-button btn btn-outline-danger"
							href="delete?id=${customer.customerId}">Delete </a></td>
				</tbody>
			</c:forEach>


		</table>
	</div>


</body>
</html>