<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Font-awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Product</title>

<!-- new -->
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
	integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ"
	crossorigin="anonymous">
<!-- Latest compiled and minified CSS
 -->
<link rel="stylesheet"
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

</head>
<body>

	<!-- Navigation -->
	<%@include file="./Shared/NavHome.jsp"%>

	<form:form class="form-horizontal" modelAttribute="product"
		action="regProd" method="POST" enctype="multipart/form-data">
		<fieldset>

			<!-- Form Name -->
			<center>
				<legend>PRODUCT REGISTRATION</legend>
			</center>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Supplier
					ID</label>
				<div class="col-md-4">
					<form:input id="textinput" type="text" placeholder=""
						class="form-control input-md" required="" path="supplierId" />
					<span class="help-block">Enter your ID</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Product
					Name</label>
				<div class="col-md-4">
					<form:input id="textinput" type="text" placeholder=""
						class="form-control input-md" required="" path="prodName" />
					<span class="help-block">Enter product name</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Quantity</label>
				<div class="col-md-4">
					<form:input id="textinput" path="quantity" type="text"
						placeholder="" class="form-control input-md" required="" />
					<span class="help-block">Enter number of pieces</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Price</label>
				<div class="col-md-4">
					<form:input id="textinput" path="unitPrice" type="text"
						placeholder="" class="form-control input-md" required="" />
					<span class="help-block">Enter product price</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Category
				</label>
				<div class="col-md-4">
					<form:select path="categoryId" items="${catlist}"
						itemLabel="categoryName" itemValue="categoryId" />
					<span class="help-block">Category of product</span>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Description</label>
				<div class="col-md-4">
					<form:textarea id="textinput" type="text" placeholder=""
						class="form-control input-md" required="" path="description" />
					<span class="help-block">Enter small description</span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="file">Choose 1st
					Image</label>
				<div class="col-md-4">
					<input type="file" name="file1" class="form-control" />

				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="file">Choose 2nd
					Image</label>
				<div class="col-md-4">
					<input type="file" name="file2" class="form-control" />

				</div>
			</div>
			<div class="form-group">
				<label class="col-md-4 control-label" for="file">Choose 3rd
					Image</label>
				<div class="col-md-4">
					<input type="file" name="file3" class="form-control" />

				</div>
			</div><div class="form-group">
				<label class="col-md-4 control-label" for="file">Choose 4th
					Image</label>
				<div class="col-md-4">
					<input type="file" name="file4" class="form-control" />

				</div>
			</div>


			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Submit"></label>
				<div class="col-md-4">
					<button id="Submit" class="btn btn-success">Submit</button>
					<button id="Reset" class="btn btn-danger">Reset</button>
				</div>
			</div>


		</fieldset>
	</form:form>
	<table class="table table-hover" border="10">
		<thead>
			<tr>
				<th>Image</th>
				<th>Product ID</th>
				<th>Category ID</th>
				<th>Supplier ID</th>
				<th>Description</th>
				<th>Name</th>
				<th>Price</th>
				<th>Stock</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${prodlist}" var="pro">
				<tr>
					<td><img
						src="${pageContext.request.contextPath}/resources/Image/${pro.code}/1.jpg"
						height="200px" width="200px" /></td>
					<td>${pro.prodid}</td>
					<td>${pro.categoryId}</td>
					<td>${pro.supplierId}</td>
					<td>${pro.description}</td>
					<td>${pro.prodName}</td>
					<td>${pro.unitPrice}</td>
					<td>${pro.quantity}</td>
					<td><a href="updateProduct/${pro.prodid}"
						class="fas fa-edit btn btn-info"></a></td>
					<td><a href="deleteProd/${pro.prodid}"
						class="fas fa-trash-alt btn btn-danger"></a></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
</body>
</html>