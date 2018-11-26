<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- css -->
<style>
.user-row {
	margin-bottom: 14px;
}

.user-row:last-child {
	margin-bottom: 0;
}

.dropdown-user {
	margin: 13px 0;
	padding: 5px;
	height: 100%;
}

.dropdown-user:hover {
	cursor: pointer;
}

.table-user-information>tbody>tr {
	border-top: 1px solid rgb(221, 221, 221);
}

.table-user-information>tbody>tr:first-child {
	border-top: 0;
}

.table-user-information>tbody>tr>td {
	border-top: 0;
}

.toppad {
	margin-top: 20px;
}
</style>
<script type="text/javascript">
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	})
</script>
<!-- 
<script>
	$(document)
			.ready(
					function() {
						var panels = $('.user-infos');
						var panelsButton = $('.dropdown-user');
						panels.hide();

						//Click dropdown
						panelsButton
								.click(function() {
									//get data-for attribute
									var dataFor = $(this).attr('data-for');
									var idFor = $(dataFor);

									//current button
									var currentButton = $(this);
									idFor
											.slideToggle(
													400,
													function() {
														//Completed slidetoggle
														if (idFor
																.is(':visible')) {
															currentButton
																	.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>');
														} else {
															currentButton
																	.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
														}
													})
								});

						$('[data-toggle="tooltip"]').tooltip();

						$('button').click(function(e) {
							e.preventDefault();
							alert("This is a demo.\n :-)");
						});
					});
</script>
 -->
<head>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

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
</head>
<body>
	<div id="flipkart-navbar">
		<div class="container">
			<div class="row row1">
				<ul class="largenav pull-right">
					<li class="upper-links"><a class="links" href="ViewProduct">View
							Product</a></li>

					
						<li class="upper-links dropdown"><a class="links" href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false"> Manage <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a class="links"
									href="/ShopFront/manageProduct/prodReg">Product</a></li>
								<li><a class="links"
									href="/ShopFront/manageProduct/CatReg">Category</a></li>
								<li role="separator" class="divider"></li>
								<li><a class="links"
									href="/ShopFront/manageProduct/SupplierReg">Supplier</a></li>
							</ul></li>
					

					<li class="upper-links dropdown"><a class="links" href="#"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false"> More <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="upper-links" href="#"><span 
								     class="fas fa-hand-pointer"></span>Sell on New Shop</a></li>
							<li role="separator" class="divider"></li>
							<li><a class="upper-links" href="#"><span 
								     class="fas fa-people-carry"></span>24*7 Customer Care</a></li>
							<li role="separator" class="divider"></li>
							<li><a class="upper-links" href="#"><span 
								     class="fas fa-download"></span>Download App</a></li>
						</ul></li>



					<li class="upper-links"><a class="links"
						href="http://clashhacks.in/"> <svg class="" width="16px"
								height="12px" style="overflow: visible;">
                            <path
									d="M8.037 17.546c1.487 0 2.417-.93 2.417-2.417H5.62c0 1.486.93 2.415 2.417 2.415m5.315-6.463v-2.97h-.005c-.044-3.266-1.67-5.46-4.337-5.98v-.81C9.01.622 8.436.05 7.735.05 7.033.05 6.46.624 6.46 1.325v.808c-2.667.52-4.294 2.716-4.338 5.98h-.005v2.972l-1.843 1.42v1.376h14.92v-1.375l-1.842-1.42z"
									fill="#fff"></path>
                        </svg>
					</a></li>
					
					



						<li class="upper-links dropdown" items="" var="Shop"><a
							class=" upper-links dropdown-toggle" data-toggle="dropdown"
							href="#">Welcome Ahmad Hussain<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/ShopFront/EditStudent/315"><span 
								     class="fas fa-user-alt"></span> My Profile</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#"><span 
								     class="fas fa-box"></span> Order</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#"><span 
								     class="fas fa-heart"></span> Wishlist</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#"><span 
								     class="fas fa-bell"></span> Notifications</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="logout"><span
										class="fas fa-power-off"></span> Logout</a></li>

							</ul></li>

					

				</ul>
			</div>
			<div class="row row2">
				<div class="col-sm-2">
					<h2 style="margin: 0px;">
						<span class="smallnav menu" onclick="openNav()">â˜° Brand</span>
					</h2>
					<a class="upper-links" href="http://localhost:8080/ShopFront/">
						<h1 style="margin: 0px;">
							<span class="largenav"  data-toggle="tooltip" title="NewShop" >New Shop</span>

						</h1>
					</a>
					<p font-size="14px">SHOP ANYWHERE</p>
				</div>

				<form class ="example" action="/ShopFront/search">

					<div class="flipkart-navbar-search smallsearch col-sm-8 col-xs-11">
						<div class="row">
							<input type="text" style="color:black !important;"  data-toggle="tooltip" title="Search for Products, Brands and more" class="flipkart-navbar-input col-xs-11" 
								placeholder="Search for Products, Brands and more"
								name="Keyword">
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
                    </svg> Cart <span class="item-number ">0</span>
					</a>
				</div>
	
			</div>
		</div>
	</div>
	<div id="mySidenav" class="sidenav">
		<div class="container"
			style="background-color: #2874f0; padding-top: 10px;">
			<span class="sidenav-heading">Home</span> <a
				href="javascript:void(0)" class="closebtn" onclick="closeNav()">Ã—</a>
		</div>
		<a href="http://clashhacks.in/">Link</a> <a
			href="http://clashhacks.in/">Link</a> <a href="http://clashhacks.in/">Link</a>
		<a href="http://clashhacks.in/">Link</a>
	</div>

	

<style type="text/css"> 
.navbar navbar-inverse .nav navbar-nav .dropdown{
padding-right: 3.5rem;
padding-left: 3.5rem;
</style>


 <nav class="navbar navbar-white">
 <!--  <div class="container-fluid"> -->
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Electronics<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Tvs & Appliances<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">      Men
      <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">     Women
      <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> Baby & Kids<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">        Home & Furniture
<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Sports, Books & More
<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">offers
<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      
    </ul>
<!--   </div> -->
</nav>


	<div class="container">
		<div class="row">
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i>Hello, Ahmad Hussain</i>
						</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3 col-lg-3 " align="center">
								<h1>
									<img
										src="/ShopFront/resources/Image/banner/52948509_Al.jpg"
										class="img-responsive" alt="" />
								</h1>
							</div>

							<div class=" col-md-9 col-lg-9 ">

								<form id="newShop" class="form-horizontal" action="/ShopFront/updateStud" method="post">
									<fieldset>
										<input id="userid" name="userid" type="hidden" value="315"/>


										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Name</label>
											<div class="col-md-8">
												<input id="Name" name="name" name="name" placeholder="StudentName" type="text" class="form-control input-md" value="Ahmad Hussain"/>

											</div>
										</div>

										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Email</label>
											<div class="col-md-8">
												<input id="textinput" name="email" name="textinput" placeholder="Email" type="text" class="form-control input-md" value="ah3925@gmail.com"/>

											</div>
										</div>

										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Mobile
												number</label>
											<div class="col-md-8">
												<input id="textinput" name="mobile" name="textinput" placeholder="Mobilenumber" type="text" class="form-control input-md" value="8235132719"/>

											</div>
										</div>

										<input id="role" name="role" type="hidden" value="ROLE_ADMIN"/>
										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label" for="textinput">Address</label>
											<div class="col-md-8">
												<input id="textinput" name="address" name="textinput" placeholder="StudentFullAddress" type="text" class="form-control input-md" value="sapru marg"/>

											</div>
										</div>

										<!-- Trigger the modal with a button -->

										<a style="float: right" href="#" data-toggle="modal"
											data-target="#myModal">Change Password</a>


										<!-- Modal -->
										<div class="modal fade" id="myModal1" role="dialog">
											<div class="modal-dialog">

												<!-- Modal content-->
												<div class="modal-content">
													<div class="modal-header">
														<h4 class="modal-title">Change Password</h4>
													</div>


													<!-- Password input-->
													<div class="form-group">
														<label class="col-md-4 control-label" for="passwordinput">Current
															Password </label>
														<div class="col-md-5">
															<input id="passwordinput" name="passwordinput" placeholder="Type Current Password" type="text" class="form-control input-md" value=""/>

														</div>
													</div>

													<!-- Password input-->
													<div class="form-group">
														<label class="col-md-4 control-label" for="passwordinput">New
															Password</label>
														<div class="col-md-5">
															<input id="passwordinput" name="passwordinput" placeholder="Type New Password" type="text" class="form-control input-md" value=""/>
														</div>
													</div>

													<!-- Password input-->
													<div class="form-group">
														<label class="col-md-4 control-label" for="passwordinput">Retype
															New Password</label>
														<div class="col-md-5">
															<input id="passwordinput" name="passwordinput" placeholder="Retype New Password" type="text" class="form-control input-md" value=""/>
														</div>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-primary">Chnage
															Password</button>
														<button type="button" class="btn btn-default"
															data-dismiss="modal">Close</button>
													</div>
												</div>


											</div>

										</div>

										<!-- Button (Double) -->
										<div class="form-group">
											<label class="col-md-4 control-label" for="button1id"></label>
											<div class="col-md-8">
												<button id="button1id" type="submit" name="button1id"
													class="btn btn-info">Submit</button>
												<button id="Cancel" name="Cancel" class="btn btn-danger">Cancel</button>
											</div>
										</div>

									</fieldset>
								</form>
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
		<!------ Include the above in your HEAD tag ---------->

<div class="container center">
	<div class="row">
		<h2 class="block-center">Bootstrap modal center</h2>
	</div>
	<div class="row">
	    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Modal center</button>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>