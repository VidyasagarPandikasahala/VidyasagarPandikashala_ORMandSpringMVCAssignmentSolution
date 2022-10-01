<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Customer Relation Management</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<Style>
body {
	background-color: offwhite
}

h1 {
	text-align: center;
	color: wheat;
}

.form-heading {
	text-align: center;
	color: Black;
}

.form-div {
	width: 50%;
	margin: 0 auto;
	border: 1px solid #ccc;
	padding: 20px 20px 20px 20px;
	border-radius: 10px;
	background-color: #302f2f;
}

.form-group {
	margin-bottom: 50px;
}

p {
	text-align: center;
	color: white;
}

.btn btn-outline-dark {
	button-align: center;
}

.submit-button-container {
	display: flex;
	justify-content: center;
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
		<a href="customerlist">  Customer List</a>
	</button>
	<h1 class="form-heading">Customer Form</h1>

	<div class="form-div">
		<form action="save" method="post">
			<div class="form-group">
				<input type="hidden" class="form-control" placeholder="Enter ID"
					name="customerId" value="${customer.customerId}">
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter Name"
					name="firstName" value="${customer.firstName}">
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter lastName"
					name="lastName" value="${customer.lastName}">
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter email"
					name="email" value="${customer.email}">
			</div>
			<div class="submit-button-container">
				<button class="submit-button btn btn-outline-warning btn-lg"
					type="submit">Save</button>
			</div>
		</form>
	</div>



</body>
</html>