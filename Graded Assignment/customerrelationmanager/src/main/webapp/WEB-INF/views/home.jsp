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

p {
	text-align: center;
	color: white;
}

.btn btn-outline-dark {
	button-align: center;
}

.navbuttons {
	height: 80vh;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 20px;
	flex-direction: column;
}
</Style>
<body>
	<div class="container-fluid p-3 my-3 bg-dark text-white">
		<h1>Customer Relation Management</h1>

	</div>
	<div class="navbuttons">
		<button type="button" class="btn btn-outline-dark">
			<a href="customerlist">Customer List</a>
		</button>
		<button type="button" class="btn btn-outline-dark">
			<a href="add">Add-Customer</a>
		</button>
	</div>


</body>
</html>