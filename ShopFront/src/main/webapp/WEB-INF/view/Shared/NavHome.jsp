<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<script type="text/javascript">
	function checkPass() {
		//Store the password field objects into variables ...
		var pass1 = document.getElementById('newpassword');
		var pass2 = document.getElementById('confirm_password');
		//Store the Confimation Message Object ...
		var message = document.getElementById('confirmMessage');
		//Set the colors we will be using ...
		var goodColor = "#66cc66";
		var badColor = "#ff6666";
		//Compare the values in the password field 
		//and the confirmation field
		if (newpassword.value == confirm_password.value) {
			//The passwords match. 
			//Set the color to the good color and inform
			//the user that they have entered the correct password 
			confirm_password.style.backgroundColor = goodColor;
			message.style.color = goodColor;
			message.innerHTML = "Passwords Match!"
		} else {
			//The passwords do not match.
			//Set the color to the bad color and
			//notify the user.
			confirm_password.style.backgroundColor = badColor;
			message.style.color = badColor;
			message.innerHTML = "Passwords Do Not Match!"
		}
	}
</script>

<script>
	function myFunction() {
		var x = document.getElementById("Password");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">

<style type="text/css">
#flipkart-navbar {
	background-color: #000066;
	color: #FFFFFF;
}

.row1 {
	padding-top: 10px;
}

.row2 {
	padding-bottom: 20px;
}

.flipkart-navbar-input {
	padding: 11px 16px;
	border-radius: 2px 0 0 2px;
	border: 0 none;
	outline: 0 none;
	font-size: 15px;
}

.flipkart-navbar-button {
	background-color: #ffe11b;
	border: 1px solid #ffe11b;
	border-radius: 0 2px 2px 0;
	color: #565656;
	padding: 10px 0;
	height: 43px;
	cursor: pointer;
}

.cart-button {
	background-color: #2469d9;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .23), inset 1px 1px 0 0
		hsla(0, 0%, 100%, .2);
	padding: 10px 0;
	text-align: center;
	height: 41px;
	border-radius: 2px;
	font-weight: 500;
	width: 120px;
	display: inline-block;
	color: #FFFFFF;
	text-decoration: none;
	color: inherit;
	border: none;
	outline: none;
}

.cart-button:hover {
	text-decoration: none;
	color: #fff;
	cursor: pointer;
}

.cart-svg {
	display: inline-block;
	width: 16px;
	height: 16px;
	vertical-align: middle;
	margin-right: 8px;
}

.item-number {
	border-radius: 3px;
	background-color: rgba(0, 0, 0, .1);
	height: 20px;
	padding: 3px 6px;
	font-weight: 500;
	display: inline-block;
	color: #fff;
	line-height: 12px;
	margin-left: 10px;
}

.upper-links {
	display: inline-block;
	padding: 0 11px;
	line-height: 23px;
	font-family: 'Roboto', sans-serif;
	letter-spacing: 0;
	color: inherit;
	border: none;
	outline: none;
	font-size: 12px;
}

.dropdown {
	position: relative;
	display: inline-block;
	margin-bottom: 0px;
}

.dropdown:hover {
	background-color: #fff;
}

.dropdown:hover .links {
	color: #000;
}

.dropdown:hover .dropdown-menu {
	display: block;
}

.dropdown .dropdown-menu {
	position: absolute;
	top: 100%;
	display: none;
	background-color: #ffffff;
	color: #333;
	left: 0px;
	border: 0;
	border-radius: 0;
	box-shadow: 0 4px 8px -3px #555454;
	margin: 0;
	padding: 0px;
}

.links {
	color: #fff;
	text-decoration: none;
}

.links:hover {
	color: #fff;
	text-decoration: none;
}

.profile-links {
	font-size: 12px;
	font-family: 'Roboto', sans-serif;
	border-bottom: 1px solid #e9e9e9;
	box-sizing: border-box;
	display: block;
	padding: 0 11px;
	line-height: 23px;
}

.profile-li {
	padding-top: 2px;
}

.largenav {
	display: none;
}

.smallnav {
	display: block;
}

.smallsearch {
	margin-left: 15px;
	margin-top: 15px;
}

.menu {
	cursor: pointer;
}

@media screen and (min-width: 768px) {
	.largenav {
		display: block;
	}
	.smallnav {
		display: none;
	}
	.smallsearch {
		margin: 0px;
	}
}

/*Sidenav*/
.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #fff;
	overflow-x: hidden;
	transition: 0.5s;
	box-shadow: 0 4px 8px -3px #555454;
	padding-top: 0px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
	color: #fff;
}

@media screen and (max-height: 450px) {
	.sidenav a {
		font-size: 18px;
	}
}

.sidenav-heading {
	font-size: 36px;
	color: #fff;
}
</style>
<script type="text/javascript">
	function openNav() {
		document.getElementById("mySidenav").style.width = "70%";
		// document.getElementById("flipkart-navbar").style.width = "50%";
		document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.body.style.backgroundColor = "rgba(0,0,0,0)";
	}
</script>
<script type="text/javascript">
	$('#loginModal').on('shown.bs.modal', function() {
		$('#myInput').focus()
	})
</script>

<!-- login -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.modal-header, h4, .close {
	background-color: #5cb85c;
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.modal-footer {
	background-color: #f9f9f9;
}
</style>
<script>
	$(function() {
		$('#id_1').click(function(e) {
			e.preventDefault();
			$("#PlaceHolder").attr('src', "${image}/${product.code}/1.jpg");

		});
		$('#id_2').click(function(e) {
			e.preventDefault();
			$("#PlaceHolder").attr('src', "${image}/${product.code}/2.jpg");

		});
		$('#id_3').click(function(e) {
			e.preventDefault();
			$("#PlaceHolder").attr('src', "${image}/${product.code}/3.jpg");

		});
		$('#id_4').click(function(e) {
			e.preventDefault();
			$("#PlaceHolder").attr('src', "${image}/${product.code}/4.jpg");

		});

	});
</script>
<style type="text/css">
    
    .grid-img .img-top {
        display: none;
        position: absolute;
       
    }
    .grid-img:hover .img-top {
        display: inline;
    }
</style>
</head>
<body>
	<div id="flipkart-navbar" class="navbar">
		<div class="container">
			<div class="row row1">
				<ul class="largenav pull-right">
					<li class="upper-links"><a class="links"
						href="${pageContext.request.contextPath}/ViewProduct">View
							Product</a></li>

					<c:if test="${user.role=='ROLE_ADMIN'}">
						<li class="upper-links dropdown"><a class="links" href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false"> Manage <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a class="links"
									href="${pageContext.request.contextPath}/manageProduct/prodReg">Product</a></li>
								<li><a class="links"
									href="${pageContext.request.contextPath}/manageProduct/CatReg">Category</a></li>
								<li role="separator" class="divider"></li>
								<li><a class="links"
									href="${pageContext.request.contextPath}/manageProduct/SupplierReg">Supplier</a></li>
							</ul></li>
					</c:if>

					<li class="upper-links dropdown"><a class="links" href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false"> More <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="upper-links" href="#"><span
									class="fas fa-hand-pointer"></span> Sell on New Shop</a></li>
							<li role="separator" class="divider"></li>
							<li><a class="upper-links" href="#"><span
									class="fas fa-people-carry"></span> 24*7 Customer Care</a></li>
							<li role="separator" class="divider"></li>
							<li><a class="upper-links" href="#"><span
									class="fas fa-download"></span> Download App</a></li>
						</ul></li>



					<li class="upper-links"><a class="links"
						href="http://clashhacks.in/"> <svg class="" width="16px"
								height="12px" style="overflow: visible;">
                            <path
									d="M8.037 17.546c1.487 0 2.417-.93 2.417-2.417H5.62c0 1.486.93 2.415 2.417 2.415m5.315-6.463v-2.97h-.005c-.044-3.266-1.67-5.46-4.337-5.98v-.81C9.01.622 8.436.05 7.735.05 7.033.05 6.46.624 6.46 1.325v.808c-2.667.52-4.294 2.716-4.338 5.98h-.005v2.972l-1.843 1.42v1.376h14.92v-1.375l-1.842-1.42z"
									fill="#fff"></path>
                        </svg>
					</a></li>

					<c:if test="${not empty error}">
						<div class="error">${error}</div>
					</c:if>
					<c:if test="${not empty msg}">
						<div class="msg">${msg}</div>
					</c:if>


					<c:if test="${user.name==null}">


						<li class="upper-links">
							<!-- Trigger the modal with a button --> <a type="button"
							class="btn btn-default btn-sm-2" id="myBtn">Login Or SignUp</a>
						</li>




						<!-- Modal -->
						<div class="modal fade" id="loginModal" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header" style="padding: 35px 50px;">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>
											<span class="glyphicon glyphicon-lock"></span> Login/Register
										</h4>
									</div>
									<div class="modal-body" style="padding: 40px 50px;">
										<ul class="nav nav-tabs">
											<li class="active"><a data-toggle="tab" href="#Login">Login</a></li>
											<li><a data-toggle="tab" href="#Register">Register</a></li>
										</ul>
										<div class="tab-content">
											<div id="Login" class="tab-pane fade in active">
												<form id="login" action="perform_login" method="post">
													<div class="form-group">
														<label for="usrname"><span
															class="glyphicon glyphicon-user"></span> Username</label> <input
															type="text" class="form-control" id="usrname"
															name="username" placeholder="Enter email">
													</div>
													<div class="form-group">
														<label for="psw"><span
															class="glyphicon glyphicon-eye-open"></span> Password</label> <input
															type="password" class="form-control" id="Password"
															name="password" placeholder="Enter password"> 
														<div class="checkbox">
															<label style="color: black !important;"><input
																type="checkbox" onclick="myFunction()">Show Password</label>
														</div>
													</div>
													<div class="checkbox">
														<label style="color: black !important;"><input
															type="checkbox" value="" checked>Remember me</label>
													</div>
													<button type="submit" class="btn btn-success btn-block">
														<span class="glyphicon glyphicon-off"></span> Login
													</button>
												</form>
											</div>
											<div id="Register" class="tab-pane fade">
												<div class="box">
													<div class="content registerBox"
														style="padding: 40px 50px;">
														<div class="form">
															<form:form class="form-horizontal" modelAttribute="Shop"
																action="regStud" method="post">
																<div class="form-group">
																	<label for="usrname"><span
																		class="glyphicon glyphicon-user"></span> Email</label>
																	<form:input type="text" class="form-control"
																		id="textinput" path="email" name="username"
																		placeholder="Enter email" required="" />
																</div>
																<div class="form-group">
																	<label for="usrname"><span
																		class="glyphicon glyphicon-user"></span>Name</label>
																	<form:input type="text" class="form-control"
																		id="textinput" path="name" name="name"
																		placeholder="Enter Full Name" required="" />
																</div>
																<div class="form-group">
																	<label for="usrname"><span
																		class="glyphicon glyphicon-user"></span>Mobile</label>
																	<form:input type="text" class="form-control"
																		id="textinput" path="mobile" name="textinput"
																		placeholder="Enter Mobile Number" required="" />
																</div>


																<div class="form-group">
																	<label for="psw"><span
																		class="glyphicon glyphicon-eye-open"></span> Set
																		Password</label>
																	<form:input type="text" path="password"
																		class="form-control" id="newpassword" name="password"
																		placeholder="Set password" />
																</div>
																<div class="form-group">
																	<label for="psw"><span
																		class="glyphicon glyphicon-eye-open"></span>Confirm
																		Password</label> <input class="form-control"
																		id="confirm_password" name="confirmpassword"
																		placeholder="Confirm password"
																		onkeyup="checkPass(); return false;" type="password">
																	<span id="confirmMessage" class="confirmMessage"></span>
																</div>
																<button type="submit" class="btn btn-success btn-block">
																	<span class=""></span>CREATE ACCOUNT
																</button>
															</form:form>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<!-- register -->
						<!-- <div class="modal fade" id="RegisterModal" role="dialog">
							<div class="modal-dialog">
								<div class="modal-header" style="padding: 35px 50px;">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4>
										<span class="glyphicon glyphicon-lock"></span> Register
									</h4>
								</div>
								<div class="box">
									<div class="content registerBox" style="padding: 40px 50px;">
										<div class="form">
											<form id="register" method="post" html="{:multipart=>true}"
												data-remote="true" action="regStud" accept-charset="UTF-8"
												method="post">
												<div class="form-group">
													<label for="usrname"><span
														class="glyphicon glyphicon-user"></span> Email</label> <input
														type="text" class="form-control" id="textinput"
														path="email" name="username" placeholder="Enter email"
														required="">
												</div>
												<div class="form-group">
													<label for="psw"><span
														class="glyphicon glyphicon-eye-open"></span> Set Password</label>
													<input type="password" path="password" class="form-control"
														id="Password" name="password" placeholder="Set password">
												</div>
												<div class="form-group">
													<label for="psw"><span
														class="glyphicon glyphicon-eye-open"></span>Confirm
														Password</label> <input type="password" class="form-control"
														id="confirmpassword" name="confirmpassword"
														placeholder="Confirm password">
												</div>
												<button type="submit" class="btn btn-success btn-block">
													<span class=""></span>CREATE ACCOUNT
												</button>
											</form>
										</div>
										<div class="modal-footer">
											<p style="color: black !important;">
												Already have an account? <a 
													href="javascript: showLoginForm();" id="loginModal">Login</a>
											</p>

										</div>
									</div>
								</div>
							</div>



						</div> -->
						<script>
							$(document).ready(function() {
								$("#myBtn").click(function() {
									$("#loginModal").modal();
								});
							});
						</script>


						<script>
							$(document).ready(function() {
								$("#RegisterModal").click(function() {
									$("#RegisterModal").modal();
								});
							});
						</script>
					</c:if>

					<c:if test="${user.name!=null}">

						<li class="upper-links dropdown" items="${listShop}" var="Shop"><a
							class=" upper-links dropdown-toggle" data-toggle="dropdown"
							href="#">Welcome ${user.name}<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a
									href="${pageContext.request.contextPath}/EditStudent/${user.userid}"><span
										class="fas fa-user-alt"></span> My Profile</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#"><span class="fas fa-box"></span> Order</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#"><span class="fas fa-heart"></span>
										Wishlist</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#"><span class="fas fa-bell"></span>
										Notifications</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="logout"><span class="fas fa-power-off"></span>
										Logout</a></li>

							</ul></li>

					</c:if>
				</ul>

			</div>
		</div>
		<div class="row row2">
			<div class="col-sm-2">

				<a class="upper-links" href="http://localhost:8080/ShopFront/">
					<h1 style="margin: 0px;">
						<span class="largenav" data-toggle="tooltip" title="NewShop">New
							Shop</span>

					</h1>
				</a>
				<p font-size="14px">SHOP ANYWHERE</p>
			</div>

			<form class="example"
				action="${pageContext.request.contextPath}/search">

				<div class="flipkart-navbar-search smallsearch col-sm-8 col-xs-11">
					<div class="row">
						<input type="text" style="color: black !important;"
							data-toggle="tooltip"
							title="Search for Products, Brands and more"
							class="flipkart-navbar-input col-xs-11"
							placeholder="Search for Products, Brands and more" name="Keyword">
						<button class="flipkart-navbar-button col-xs-1" type="submit">
							<svg width="15px" height="15px">
                            <path
									d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path>
                        </svg>
						</button>
					</div>
				</div>
			</form>

			<div class="cart largenav col-sm-2">

				<a class="cart-button" href="shopingcart"> <svg
						class="cart-svg " width="16 " height="16 " viewBox="0 0 16 16 ">
                        <path
							d="M15.32 2.405H4.887C3 2.405 2.46.805 2.46.805L2.257.21C2.208.085 2.083 0 1.946 0H.336C.1 0-.064.24.024.46l.644 1.945L3.11 9.767c.047.137.175.23.32.23h8.418l-.493 1.958H3.768l.002.003c-.017 0-.033-.003-.05-.003-1.06 0-1.92.86-1.92 1.92s.86 1.92 1.92 1.92c.99 0 1.805-.75 1.91-1.712l5.55.076c.12.922.91 1.636 1.867 1.636 1.04 0 1.885-.844 1.885-1.885 0-.866-.584-1.593-1.38-1.814l2.423-8.832c.12-.433-.206-.86-.655-.86 "
							fill="#fff "></path>
                    </svg> Cart <span class="item-number ">${size}</span>
				</a>
			</div>

		</div>
	</div>
	</div>
	<div id="mySidenav" class="sidenav">
		<div class="container"
			style="background-color: #2874f0; padding-top: 10px;">
			<span class="sidenav-heading">Home</span> <a
				href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
		</div>
		<a href="http://clashhacks.in/">Link</a> <a
			href="http://clashhacks.in/">Link</a> <a href="http://clashhacks.in/">Link</a>
		<a href="http://clashhacks.in/">Link</a>
	</div>