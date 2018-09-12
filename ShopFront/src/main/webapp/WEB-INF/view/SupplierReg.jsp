<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Font-awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
 integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" 
 crossorigin="anonymous">
 
 
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><title>Manage Product</title>

<!-- new -->
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
	integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ"
	crossorigin="anonymous">
<!-- Latest compiled and minified CSS
 --><link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!--Optional theme  -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<title>Supplier Registration</title>
</head>
<body>

<!-- Navogation -->
	<%@include file="./Shared/NavHome.jsp"%>
	
	<form:form class="form-horizontal" modelAttribute="supplier" action="regSupp" method="post" enctype="multipart/form-data">
		<fieldset>

			<!-- Form Name --><center>
			<legend>SUPPLIER REGISTRATION</legend></center>


			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Supplier Name</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="supplierName" />
					<span class="help-block">Enter Supplier Name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Description</label>
				<div class="col-md-4">
					<form:input id="textinput" name="textinput" type="text"
						placeholder="" class="form-control input-md" required=""
						path="description" />
					<span class="help-block">Enter small description</span>
				</div>
			</div>
			

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-4">
					<button id="Submit" name="Submit" class="btn btn-success">Submit</button>
					<button id="Reset" name="Reset" class="btn btn-danger">Reset</button>
				</div>
			</div>
			

		</fieldset>
	</form:form>
	<table class="table table-hover" border="10">
		<thead>
			<tr>
				<th>Supplier ID</th>
				<th>Supplier Name</th>
				<th>Description</th>
					
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${suplist}" var="pro">
				<tr>
					<td>${pro.supplierid}</td>
					<td>${pro.supplierName}</td>
					<td>${pro.description}</td>
					
					<td><a href="supEdit/${pro.supplierid}"
						class="fas fa-edit btn btn-info"></a></td>
					<td><a href="deleteSup/${pro.supplierid}"
						class="fas fa-trash-alt btn btn-danger"></a></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
</body>
</html>