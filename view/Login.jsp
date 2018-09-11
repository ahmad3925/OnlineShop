<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
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
<title>Login Form</title>
</head>
<body>
	<center>
		<h1>Welcome to New Shop</h1>
	</center>
	<br>
	
	<!-- Navogation -->
	<%@include file="./Shared/navbar.jsp"%>


	<!-- Page Content  -->
	<center>
		<h3>Enter Your Login Details</h3>
	</center>
	<form:form class="form-horizontal" modelAttribute="Shop" action="login"
		method="post">
		<fieldset>

			<div class="form-group">
				` <label class="col-md-4 control-label" for="textinput">UserID</label>
				<div class="col-md-5">
					<input id="textinput" name="textinput" placeholder="UserID"
						class="form-control input-md" required="" type="text">

				</div>
			</div>

			</div>
			</div>
			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="passwordinput">Password
				</label>
				<div class="col-md-5">
					<input id="passwordinput" name="passwordinput"
						placeholder="**************" class="form-control input-md"
						required="" type="password">

				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-5">
					<a href="http://localhost:8080/ShopFront/" class="btn btn-info">
						Submit</a>
					<button id="Cancel" name="Cancel" class="btn btn-danger">Cancel</button>


				</div>
			</div>

		</fieldset>
	</form:form>
	<div class="panel-footer">
		<div class="text-right">
			New User - <a href="Register">Register Here</a>
		</div>
	</div>
</body>
</html>