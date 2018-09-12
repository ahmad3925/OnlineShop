<html>
<head>
<style>
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
	font-family: 'Open Sans', 'sans-serif';
}

.mega-dropdown {
	position: static !important;
}

.mega-dropdown-menu {
	padding: 20px 0px;
	width: 100%;
	box-shadow: none;
	-webkit-box-shadow: none;
}

.mega-dropdown-menu>li>ul {
	padding: 0;
	margin: 0;
}

.mega-dropdown-menu>li>ul>li {
	list-style: none;
}

.mega-dropdown-menu>li>ul>li>a {
	color: #222;
	padding: 3px 5px;
}

.mega-dropdown-menu>li ul>li>a:hover, .mega-dropdown-menu>li ul>li>a:focus
	{
	text-decoration: none;
}

.mega-dropdown-menu .dropdown-header {
	font-size: 18px;
	color: #ff3546;
	padding: 5px 60px 5px 5px;
	line-height: 30px;
}

.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right
	{
	font-size: 12px;
	background-color: #fff;
	line-height: 30px;
	text-shadow: none;
	color: #333;
	border: 1px solid #ddd;
}
</style>

<script>
	$(document).ready(
			function() {
				$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideDown("400");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideUp("400");
							$(this).toggleClass('open');
						});
			});
</script>

<!-- hover -->
<style type="text/css">
/* Font import */
@import url('https://fonts.googleapis.com/css?family=Roboto:300,400');

/* Media query */
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

ul {
	list-style: none;
}

a {
	text-decoration: none;
}

.navigation {
	display: flex;
}

.menu {
	display: flex;
	flex-direction: column;
}

.menu a {
	position: relative;
	display: inline-block;
	color: #666;
	transition: color .2s ease;
	margin-bottom: 3px;
}

.menu a:hover {
	color: #aaa;
}

.menu a:hover::after, .menu a:hover::before {
	width: 100%;
	left: 0;
}

.menu a::after, .menu a::before {
	content: '';
	position: absolute;
	top: calc(100% + 5px);
	width: 0;
	right: 0;
	height: 3px;
}

.menu a::before {
	transition: width .4s cubic-bezier(0.51, 0.18, 0, 0.88) .1s;
	background: #2196f3;
}

.menu a::after {
	transition: width .2s cubic-bezier(0.29, 0.18, 0.26, 0.83);
	background: #F44336;
}
</style>

<style type="text/css">
.carousel-inner .btn {
	position: absolute;
	top: 10%;
	left: 85%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	background-color: #555;
	color: white;
	font-size: 16px;
	padding: 12px 24px;
	border: none;
	cursor: pointer;
	border-radius: 5px;
	text-align: center;
}
</style>
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target=".js-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse js-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Men <span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Men Collection</li>
								<div id="menCollection" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">

											<a href="#"><img
												src="<c:url value="/resources/Image/banner/men1.png"/>"
												class="img-responsive" alt="" /></a>
											<h3>
												<small>Maniac Checkered Beige T-Shirt</small>
											</h3>

										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="<c:url value="/resources/Image/banner/men2.jpg"/>"
												class="img-responsive" alt="" /></a>
											<h3>
												<small>Red Chief Boots For Men </small>
											</h3>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="<c:url value="/resources/Image/banner/men3.jpg"/>"
												class="img-responsive" alt="" /></a>
											<h3>
												<small>Longines Watch - For Men</small>
											</h3>
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									<a class="left carousel-control" href="#menCollection"
										role="button" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#menCollection"
										role="button" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul class="menu">
								<li class="dropdown-header">Footwear</li>
								<li class="li"><a href="#">Sports Shoes</a></li>
								<li class="li"><a href="#">Casual Shoes</a></li>
								<li class="li"><a href="#">Formal Shoes</a></li>
								<li class="li"><a href="#">Sandals & Floaters</a></li>
								<li class="li"><a href="#">Flip-Flops</a></li>
								<li class="li"><a href="#">Loafers</a></li>
								<li class="li"><a href="#">Boots</a></li>

								<li class="dropdown-header">Sports wear</li>
								<li class="li"><a href="#">Sports T-shirts</a></li>
								<li class="li"><a href="#">Track Pants</a></li>
								<li class="li"><a href="#">Track Suits</a></li>
								<li class="li"><a href="#">Shorts</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul class="menu">
								<li class="dropdown-header">Top wear</li>
								<li class="li"><a href="#">T-shirts</a></li>
								<li class="li"><a href="#">Shirts</a></li>
								<li class="li"><a href="#">Kurtas</a></li>
								<li class="li"><a href="#">Suits & Blazers</a></li>
								<li class="li"><a href="#">Jackets</a></li>

								<li class="dropdown-header">Accessories</li>
								<li class="li"><a href="#">Backspacks</a></li>
								<li class="li"><a href="#">Wallets</a></li>
								<li class="li"><a href="#">Belts</a></li>
								<li class="li"><a href="#">Sunglesses</a></li>
								<li class="li"><a href="#">Luggage & Travel</a></li>
								<li class="li"><a href="#">Frames</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul class="menu">
								<li class="dropdown-header">Men's Grooming</li>
								<li class="li"><a href="#">Deodorants</a></li>
								<li class="li"><a href="#">Perfumes</a></li>
								<li class="li"><a href="#">Beard care & Grooming</a></li>
								<li class="li"><a href="#">Shaving & Aftershave</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul class="menu">
								<li class="dropdown-header">Buttom wear</li>
								<li class="li"><a href="#">Jeans</a></li>
								<li class="li"><a href="#">Trousers</a></li>
								<li class="li"><a href="#">Shorts & 3/4th</a></li>
								<li class="li"><a href="#">Cargos</a></li>
								<li class="li"><a href="#">Track Pants</a></li>
							</ul>
						</li>

					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Women <span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul class="menu">
								<li class="dropdown-header">Clothing</li>
								<li class="dropdown-header">Western wear</li>
								<li class="li"><a href="#">Top, T-shirts & Shirts</a></li>
								<li class="li"><a href="#">Dresses</a></li>
								<li class="li"><a href="#">Jeans</a></li>
								<li class="li"><a href="#">Leggings & Jeggings</a></li>
								<li class="li"><a href="#">Trousers & Capris</a></li>
								<li class="li"><a href="#">Shorts</a></li>
								<li class="li"><a href="#">Skirts</a></li>

								<li class="dropdown-header">Sports wear</li>
								<li class="li"><a href="#">Tights</a></li>
								<li class="li"><a href="#">Sports Bra</a></li>
								<li class="li"><a href="#">Track pants</a></li>
								<li class="li"><a href="#">T-shirts</a></li>

							</ul>
						</li>
						<li class="col-sm-3">
							<ul class="menu">
								<li class="dropdown-header">Ethnic wear</li>
								<li class="li"><a href="#">Sarees</a></li>
								<li class="li"><a href="#">Kurtas & Kurtis</a></li>
								<li class="li"><a href="#">Dress Material</a></li>
								<li class="li"><a href="#">Lehenga Choli</a></li>
								<li class="li"><a href="#">Blouse</a></li>
								<li class="li"><a href="#">Leggings & Salwars</a></li>
								<li class="li"><a href="#">Anarkali Suits</a></li>
								<li class="li"><a href="#">Petticoats</a></li>
								<li class="li"><a href="#">Abhayas & Burqas</a></li>
								<li class="li"><a href="#">Dupattas</a></li>


								<li class="dropdown-header">Beauty & Grooming</li>
								<li class="li"><a href="#">Tights</a></li>
								<li class="li"><a href="#">Sports Bra</a></li>
								<li class="li"><a href="#">Track pants</a></li>
								<li class="li"><a href="#">T-shirts</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul class="menu">
								<li class="dropdown-header">Footwear</li>
								<li class="li"><a href="#">Sandals</a></li>
								<li class="li"><a href="#">Flats</a></li>
								<li class="li"><a href="#">Heels</a></li>
								<li class="li"><a href="#">Wedges</a></li>
								<li class="li"><a href="#">shoes</a></li>
								<li class="li"><a href="#">Boots</a></li>
								<li class="li"><a href="#">Flip-Flops</a></li>

								<li class="dropdown-header">Accessories</li>
								<li class="li"><a href="#">Smart Bands</a></li>
								<li class="li"><a href="#">Handbags</a></li>
								<li class="li"><a href="#">Shoulder Bags</a></li>
								<li class="li"><a href="#">Totes</a></li>
								<li class="li"><a href="#">Sling Bags</a></li>
								<li class="li"><a href="#">Clutches</a></li>
								<li class="li"><a href="#">Wallets & Belts</a></li>
							</ul>
						</li>

						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Women Collection</li>
								<div id="womenCollection" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"><img
												src="<c:url value="/resources/Image/banner/w1.jpg"/>"
												class="img-responsive" alt="" /></a>
											<h3>
												<small>Summer dress floral prints</small>
											</h3>

										</div>

										<div class="item">
											<a href="#"><img
												src="<c:url value="/resources/Image/banner/w2.jpg"/>"
												class="img-responsive" alt="" /></a>
											<h3>
												<small>BuyNewTrend Dungaree </small>
											</h3>
										</div>

										<div class="item">
											<a href="#"><img
												src="<c:url value="/resources/Image/banner/w3.jpg"/>"
												class="img-responsive" alt="" /></a>
											<h3>
												<small>Flying Berry Hand-held Bag </small>
											</h3>
										</div>

										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									<a class="left carousel-control" href="#womenCollection"
										role="button" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#womenCollection"
										role="button" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Electronics <span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Features</li>
								<li><a href="#">Auto Carousel</a></li>
								<li><a href="#">Carousel Control</a></li>
								<li><a href="#">Left & Right Navigation</a></li>
								<li><a href="#">Four Columns Grid</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Fonts</li>
								<li><a href="#">Glyphicon</a></li>
								<li><a href="#">Google Fonts</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Plus</li>
								<li><a href="#">Navbar Inverse</a></li>
								<li><a href="#">Pull Right Elements</a></li>
								<li><a href="#">Coloured Headers</a></li>
								<li><a href="#">Primary Buttons & Default</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Much more</li>
								<li><a href="#">Easy to Customize</a></li>
								<li><a href="#">Calls to action</a></li>
								<li><a href="#">Custom Fonts</a></li>
								<li><a href="#">Slide down on Hover</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Electronics Collection</li>
								<div id="womenCollection" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"><img
												src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 1"></a>
											<h4>
												<small>Summer dress floral prints</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 2"></a>
											<h4>
												<small>Gold sandals with shiny touch</small>
											</h4>
											<button class="btn btn-primary" type="button">9,99 €</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 3"></a>
											<h4>
												<small>Denin jacket stamped</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									<a class="left carousel-control" href="#womenCollection"
										role="button" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#womenCollection"
										role="button" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="#">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Tvs & appliances<span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Features</li>
								<li><a href="#">Auto Carousel</a></li>
								<li><a href="#">Carousel Control</a></li>
								<li><a href="#">Left & Right Navigation</a></li>
								<li><a href="#">Four Columns Grid</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Fonts</li>
								<li><a href="#">Glyphicon</a></li>
								<li><a href="#">Google Fonts</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Plus</li>
								<li><a href="#">Navbar Inverse</a></li>
								<li><a href="#">Pull Right Elements</a></li>
								<li><a href="#">Coloured Headers</a></li>
								<li><a href="#">Primary Buttons & Default</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Much more</li>
								<li><a href="#">Easy to Customize</a></li>
								<li><a href="#">Calls to action</a></li>
								<li><a href="#">Custom Fonts</a></li>
								<li><a href="#">Slide down on Hover</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Electronics Collection</li>
								<div id="womenCollection" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"><img
												src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 1"></a>
											<h4>
												<small>Summer dress floral prints</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 2"></a>
											<h4>
												<small>Gold sandals with shiny touch</small>
											</h4>
											<button class="btn btn-primary" type="button">9,99 €</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 3"></a>
											<h4>
												<small>Denin jacket stamped</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									<a class="left carousel-control" href="#womenCollection"
										role="button" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#womenCollection"
										role="button" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="#">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Baby & Kids <span
						class="caret"></span></a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Features</li>
								<li><a href="#">Auto Carousel</a></li>
								<li><a href="#">Carousel Control</a></li>
								<li><a href="#">Left & Right Navigation</a></li>
								<li><a href="#">Four Columns Grid</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Fonts</li>
								<li><a href="#">Glyphicon</a></li>
								<li><a href="#">Google Fonts</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Plus</li>
								<li><a href="#">Navbar Inverse</a></li>
								<li><a href="#">Pull Right Elements</a></li>
								<li><a href="#">Coloured Headers</a></li>
								<li><a href="#">Primary Buttons & Default</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Much more</li>
								<li><a href="#">Easy to Customize</a></li>
								<li><a href="#">Calls to action</a></li>
								<li><a href="#">Custom Fonts</a></li>
								<li><a href="#">Slide down on Hover</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Electronics Collection</li>
								<div id="womenCollection" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"><img
												src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 1"></a>
											<h4>
												<small>Summer dress floral prints</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 2"></a>
											<h4>
												<small>Gold sandals with shiny touch</small>
											</h4>
											<button class="btn btn-primary" type="button">9,99 €</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 3"></a>
											<h4>
												<small>Denin jacket stamped</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									<a class="left carousel-control" href="#womenCollection"
										role="button" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#womenCollection"
										role="button" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="#">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
					</ul></li>
				<li class="dropdown mega-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">Sports, Books &
						More <span class="caret"></span>
				</a>
					<ul class="dropdown-menu mega-dropdown-menu">
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Features</li>
								<li><a href="#">Auto Carousel</a></li>
								<li><a href="#">Carousel Control</a></li>
								<li><a href="#">Left & Right Navigation</a></li>
								<li><a href="#">Four Columns Grid</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Fonts</li>
								<li><a href="#">Glyphicon</a></li>
								<li><a href="#">Google Fonts</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Plus</li>
								<li><a href="#">Navbar Inverse</a></li>
								<li><a href="#">Pull Right Elements</a></li>
								<li><a href="#">Coloured Headers</a></li>
								<li><a href="#">Primary Buttons & Default</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Much more</li>
								<li><a href="#">Easy to Customize</a></li>
								<li><a href="#">Calls to action</a></li>
								<li><a href="#">Custom Fonts</a></li>
								<li><a href="#">Slide down on Hover</a></li>
							</ul>
						</li>
						<li class="col-sm-3">
							<ul>
								<li class="dropdown-header">Electronics Collection</li>
								<div id="womenCollection" class="carousel slide"
									data-ride="carousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"><img
												src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 1"></a>
											<h4>
												<small>Summer dress floral prints</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 2"></a>
											<h4>
												<small>Gold sandals with shiny touch</small>
											</h4>
											<button class="btn btn-primary" type="button">9,99 €</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
										<div class="item">
											<a href="#"><img
												src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
												class="img-responsive" alt="product 3"></a>
											<h4>
												<small>Denin jacket stamped</small>
											</h4>
											<button class="btn btn-primary" type="button">49,99
												€</button>
											<button href="#" class="btn btn-default" type="button">
												<span class="glyphicon glyphicon-heart"></span> Add to
												Wishlist
											</button>
										</div>
										<!-- End Item -->
									</div>
									<!-- End Carousel Inner -->
									<!-- Controls -->
									<a class="left carousel-control" href="#womenCollection"
										role="button" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#womenCollection"
										role="button" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- /.carousel -->
								<li class="divider"></li>
								<li><a href="#">View all Collection <span
										class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
							</ul>
						</li>
					</ul></li>


			</ul>

		</div>
		<!-- /.nav-collapse -->
	</nav>
</body>
</html>