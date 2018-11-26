<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#flip").click(function() {

			$("#panel").animate({
				width : "toggle",
				height : "toggle"
			});
		});
	});
</script>

<style>
#panel, #flip {
	padding: 2px;
	text-align: center;
	background-color: #e5eecc;
	border: solid 1px #c3c3c3;
}

#panel {
	padding: 10px;
	display: none;
}
</style>

<style type="text/css">
.show {
	display: block;
}
</style>

</head>

<body>
	<!-- Navigation -->
	<%@include file="./Shared/NavHome.jsp"%>
	<%@include file="./Shared/navbar2.jsp"%>


	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i>Hello, ${user.name}</i>
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3 col-lg-3 " align="center">
								<h1>
									<img
										src="<c:url value="/resources/Image/banner/52948509_Al.jpg"/>"
										class="img-responsive" alt="" />
								</h1>
							</div>

							<div class=" col-md-9 col-lg-9 ">
								<span style="color: red;">${msg1}</span>
								<form:form class="form-horizontal" id="profileForm"
									modelAttribute="newShop"
									action="${pageContext.request.contextPath}/updateStud"
									method="post">
									<fieldset>
										<form:hidden path="userid" />


										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Name</label>
											<div class="col-md-8">
												<form:input id="Name" path="name" name="name"
													placeholder="StudentName" class="form-control input-md"
													required="" type="text" />

											</div>
										</div>

										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Email</label>
											<div class="col-md-8">
												<form:input id="textinput" path="email" name="textinput"
													placeholder="Email" class="form-control input-md"
													required="" type="text" />

											</div>
										</div>

										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Mobile
												number</label>
											<div class="col-md-8">
												<form:input id="textinput" path="mobile" name="textinput"
													placeholder="Mobilenumber" class="form-control input-md"
													required="" type="text" />

											</div>
										</div>

										<form:hidden path="role" />
										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Address</label>
											<div class="col-md-8">
												<form:input id="textinput" path="address" name="textinput"
													placeholder="EnterFullAddress"
													class="form-control input-md" required="" type="text" />

											</div>
										</div>

										<!-- change password -->

										<div class="dropdown" style="float: right">
											<a href="#" class="dropbtn" id="flip">Change Password</a>
											<div style="height: 80px">
												<div class="dropdown-content">
													<div id="panel">
														<div class="form-group">
															<div class="col-md-12">
																<input id="passwordinput" path="password"
																	name="oldPassword" placeholder="Current Password"
																	class="form-control input-md" required="" type="text" />

															</div>
														</div>
														<div class="form-group">
															<div class="col-md-12">
																<input id="newpassword" name="newpassword"
																	placeholder="New Password" value=""
																	class="form-control input-md" required="" type="text" />
															</div>
														</div>
														<div class="form-group">
															<div class="col-md-12">
																<input id="confirm_password" name="confirm_password"
																	placeholder="Retype New Password"
																	class="form-control input-md" required=""
																	onkeyup="checkPass(); return false;" type="password" />
																<span id="confirmMessage" class="confirmMessage"></span>
															</div>
														</div>
													</div>
												</div>

</div></div>
												<!-- Button (Double) -->
												<div class="form-group">
													<div>
														<button id="button1id" type="submit" name="button1id"
															class="btn btn-info">Submit</button>
														<button id="Cancel" name="Cancel" class="btn btn-danger">Cancel</button>
													</div>
												</div>


											

										</div>

									</fieldset>
								</form:form>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<a data-original-title="Broadcast Message" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-primary"><i
							class="glyphicon glyphicon-envelope"></i></a> <span
							class="pull-right"> <a href="edit.html"
							data-original-title="Edit this user" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-warning"><i
								class="glyphicon glyphicon-edit"></i></a> <a data-toggle="tooltip"
							title="Deativate Account" type="button"
							class="btn btn-sm btn-danger"><i
								class="glyphicon glyphicon-remove"></i></a>
						</span>
					</div>

				</div>

				<!-- 	<h2>FAQs</h2>
		<h4>What happens when I update my email address (or mobile
			number)?</h4>
		<p>Your login email id (or mobile number) changes, likewise.
			You'll receive all your account related communication on your updated
			email address (or mobile number)</p>
		<h4>When will my Flipkart account be updated with the new email
			address (or mobile number)?</h4>
		<p>It happens as soon as you confirm the verification code sent to
			your email (or mobile) and save the changes.</p>
		<h4>What happens to my existing Flipkart account when I update my
			email address (or mobile number)?</h4>
		<p>Updating your email address (or mobile number) doesn't
			invalidate your account. Your account remains fully functional.
			You'll continue seeing your Order history, saved information and
			personal details</p> -->
			</div>
		</div>

	</div>
	<script type="text/javascript">
		function isPasswordMatch() {
			var password = $("#password").val();
			var confirmPassword = $("#confirm_password").val();

			if (password != confirmPassword)
				$("#divCheckPassword").html("Passwords do not match!");
			else
				$("#divCheckPassword").html("Passwords match.");
		}

		$(document).ready(function() {
			$("#confirm_password").keyup(isPasswordMatch);
		});
	</script>
	<script>
		/* When the user clicks on the button, 
		 toggle between hiding and showing the dropdown content */

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {

				var dropdowns = document
						.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>


</body>
</html>