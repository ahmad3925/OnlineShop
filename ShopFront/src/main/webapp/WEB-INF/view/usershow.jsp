<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.header {
  overflow: hidden;
  background-color: #003d4d;
  padding: 5px 5px;
}

/* Style the header links */
.header a {
  float: left;
  color: white;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
}

/* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
.header a.logo {
  font-size: 25px;
  font-weight: bold;
}






/* Add media queries for responsiveness - when the screen is 500px wide or less, stack the links on top of each other */
@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}
</style>


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
<!-- new -->
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
	integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ"
	crossorigin="anonymous">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>


</head>
<body>

	<!-- Navogation -->
	<%@include file="./Shared/NavHome.jsp"%>
	
 <div class="header">
  <a href="#default" class="logo">DELIVERY ADDRESS</a>
  <div class="header-right">
   
  </div>
</div> 


	<form:form class="form-horizontal" modelAttribute="newShop"
		action="${pageContext.request.contextPath}/billing" method="post">
		<form:hidden path="userid" />
		<fieldset>



			<div class="label-group">
				<!-- Text input-->
				<div class="label-group" role="group" aria-label="...">
					<label class="col-sm-2 control-label" for="textinput">Name</label>
					<div class="col-sm-2">
						<form:input id="textinput" path="name" name="textinput"
							type="text" placeholder="Name" class="form-control input-md"
							required="" />

					</div>

				</div>
			</div>

			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="textinput">Email</label>
				<div class="col-sm-2">
					<form:input id="textinput" path="email" name="textinput"
						type="text" placeholder="E-mail" class="form-control input-md"
						required="" />

				</div>
			</div>

			<div class="label-group">
				<!-- Text input-->
				<div class="label-group" role="group" aria-label="...">
					<label class="col-sm-2 control-label" for="textinput">Mobile</label>
					<div class="col-sm-2">
						<form:input id="textinput" path="mobile" name="textinput"
							type="text" placeholder="10-digit mobile number"
							class="form-control input-md" required="" />

					</div>

				</div>
			</div>

			</div>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-2 control-label" for="textinput">pincode</label>
				<div class="col-md-2">
					<form:input id="textinput" path="pincode" class="form-control input-md" maxlength="6"  placeholder="pincode"
					required="" />

				</div>

			</div>

			<div class="label-group">
				<!-- Text input-->
				<div class="label-group" role="group" aria-label="...">
					<label class="col-md-2 control-label" for="textinput">Locality</label>
					<div class="col-md-2">
						<form:input id="textinput" path="locality" name="textinput" placeholder="Locality"
							class="form-control input-md" type="text" />
					</div>
				</div>
			</div>

			</div>
			<!-- Textarea -->
			<div class="form-group">
				<label class="col-md-2 control-label" for="textarea">Address</label>
				<div class="col-md-2">
					<form:textarea class="form-control" id="textarea" name="textarea" path="address"
						placeholder="Address(Area and Street)"></form:textarea>
				</div>
			</div>

			<div class="label-group">
				<!-- Text input-->
				<div class="label-group" role="group" aria-label="...">
					<label class="col-md-2 control-label" for="textinput">City/District/Town</label>
					<div class="col-md-2">
						<form:input id="textinput" name="textinput" path="city"
							placeholder="City/District/Town" class="form-control input-md"
							type="text" />
					</div>
				</div>
			</div>

			</div>
			<!-- Select Multiple -->
			<div class="form-group">
				<label class="col-md-2 control-label" for="selectmultiple">Select
					State</label>
				<div class="col-md-2">
					<select name="state"  >
						<option value="" >-----------Select-----------</option>
						<c:forEach items="${states}" var="state">
							<option value="${state}">${state}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="label-group">
				<!-- Text input-->
				<div class="label-group" role="group" aria-label="...">
					<label class="col-md-2 control-label" for="textinput">Landmark(Optional)</label>
					<div class="col-md-2">
						<form:input id="textinput" name="textinput" path="landmark"
							placeholder="Landmark(Optional)" class="form-control input-md"
							type="text" />
					</div>
				</div>
			</div>

			</div>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-2 control-label" for="textinput">Alternative
					Phone</label>
				<div class="col-md-2">
					<form:input id="textinput" name="textinput" path="phone"
						placeholder="Alternative Phone" class="form-control input-md"
						type="text" />

				</div>
			</div>
			<form:hidden path="role"/>
			<!-- Multiple Radios -->
			<div class="label-group">
				<!-- Text input-->
				<div class="label-group" role="group" aria-label="...">
					<label class="col-md-2 control-label" for="radios"></label>
					<div class="col-md-2">
						<div class="radio">
							<label for="radios-0"> <input name="radios" id="radios-0"
								value="1" checked="checked" type="radio"> Home(All day
								delivery)
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="radio">
				<label for="radios-1"> <input name="radios" id="radios-1"
					value="2" type="radio"> Work((Delivery between 10AM-5PM)
				</label>
			</div>
			</div>
			</div>




			<!-- Password input-->
			<div class="col-md-8">
				<form:hidden path="password" />
			</div>
			<!-- Button (Double) -->
			<center>
				<div class="form-group">
					<label class="col-md-4 control-label" for="button1id"></label>
					<div class="col-md-8">
						<button id="button1id" name="button1id" type="submit"
							class="btn btn-success">SAVE AND DELIVER HERE</button>
						<button id="button2id" name="button2id" class="btn btn-danger">Cancel</button>

					</div>
				</div>
			</center>


		</fieldset>
	</form:form>
</body>
</html>
