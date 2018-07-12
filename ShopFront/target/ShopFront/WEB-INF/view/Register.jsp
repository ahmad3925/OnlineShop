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
<title>Student Registration Form</title>
</head>
<body>
	<center>
		<h1>Welcome to New Shop</h1>
	</center>
	<br>
	<!-- Navigation -->
<%@include file="./Shared/navbar.jsp" %>
	
	<center><h3>Register Your self</h3>
	</center>
	<form:form class="form-horizontal" modelAttribute="Shop"
		action="regStud" method="post">	
		<fieldset>
			

			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Email</label>
				<div class="col-md-5">
					<form:input id="textinput" path="email" name="textinput" placeholder="EmailAddress"
						class="form-control input-md" required="" type="text" />

				</div>
			</div>
			
				</div>
			</div>
			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="passwordinput">Password
				</label>
				<div class="col-md-5">
					<form:input id="passwordinput"  path="password" name="passwordinput"
						placeholder="**************" class="form-control input-md"
						required="" type="password" />

				</div>
			</div>

			<div class="form-group">

				<label class="col-md-4 control-label" for="textinput">Name</label>
				<div class="col-md-5">
					<form:input id="Name" path="name" name="name"
						placeholder="Enter Full Name" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Mobile
					number</label>
				<div class="col-md-5">
					<form:input id="textinput" path="mobile" name="textinput"
						placeholder="Enter Mobile Number" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Address</label>
				<div class="col-md-5">
					<form:input id="textinput" path="address" name="textinput"
						placeholder="Enter Address" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>
					<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">City</label>
				<div class="col-md-5">
					<form:input id="textinput" path="city" name="textinput"
						placeholder="Enter City" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>
								<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Pin Code</label>
				<div class="col-md-5">
					<form:input id="textinput" path="pincode" name="textinput"
						placeholder="XXXXXX" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>
					<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">State</label>
				<div class="col-md-5">
					<form:input id="textinput" path="state" name="textinput"
						placeholder="Enter State" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>
								<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Country</label>
				<div class="col-md-5">
					<form:input id="textinput" path="country" name="textinput"
						placeholder="Enter Country" class="form-control input-md"
						required="" type="text" />

				</div>
			</div>
			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-5">
					<button id="button1id" type="submit" name="button1id"
						class="btn btn-info">Submit</button>
					<button id="Cancel" name="Cancel" class="btn btn-danger">Cancel</button>
					<a href="ShowAll" class="btn btn-info"> Show Records</a>
				</div>
			</div>

		</fieldset>
	</form:form>

</body>
</html>