<!DOCTYPE html>
<html lang="en">
<head>
<title>Home Page</title>


<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">



<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
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

<style type="text/css">
.navbar {
	margin-bottom: 0px;
}
</style>

<!-- login -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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


<style>
.latest-w3 {
	background-color: #f5f5f0;
}

.ban-top {
	position: relative;
	font-family: Arial;
}

.ban-text {
	position: absolute;
	bottom: 320px;
	right: 160px;
	color: white;
	background-color: rgba(51, 51, 255, 0.5);
	padding-left: 20px;
	padding-right: 20px;
}

.ban-text1 {
	position: absolute;
	bottom: 140px;
	right: 160px;
	color: white;
	background-color: rgba(51, 51, 255, 0.5);
	padding-left: 20px;
	padding-right: 20px;
}

.ban-text3 {
	position: absolute;
	bottom: 140px;
	right: 290px;
	color: white;
	background-color: rgba(51, 51, 255, 0.5);
	padding-left: 20px;
	padding-right: 20px;
}

.ban-text4 {
	position: absolute;
	bottom: 140px;
	right: 290px;
	color: white;
	background-color: rgba(51, 51, 255, 0.5);
	padding-left: 20px;
	padding-right: 20px;
}

.ban-text2 {
	position: absolute;
	bottom: 460px;
	right: 190px;
	color: white;
	background-color: #4747d1;
	padding-left: 20px;
	padding-right: 20px;
	height: 80px;
	width: 80px;
	border-radius: 50%;
}

.latest-text_1, .latest-text_2, .latest-text_3, .latest-text_4,
	.latest-text_5, .latest-text_6 {
	position: absolute;
	bottom: 1px;
	color: white;
	width: 92%;
	background-color: rgba(51, 51, 255, 0.5);
	padding-left: 130px;
	padding-right: 20px;
}

.latest-text2 {
	position: absolute;
	bottom: 160px;
	right: 60px;
	color: white;
	background-color: #4747d1;
	padding-left: 10px;
	padding-right: 50px;
	height: 70px;
	width: 70px;
	border-radius: 50%;
}
</style>

<style>
.ban-top img {
	max-width: 100%;
	-moz-transition: all 0.9s;
	-webkit-transition: all 0.9s;
	transition: all 0.9s;
}

.ban-top:hover img {
	-moz-transform: scale(1.1);
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$(".ban-text2").hover(function() {
			$(this).css("background-color", " #ff944d");
		}, function() {
			$(this).css("background-color", "#4747d1");
		});
		
		$(".latest-text2").hover(function() {
			$(this).css("background-color", " #ff944d");
		}, function() {
			$(this).css("background-color", "#4747d1");
		});
	});
</script>
<script>
	$(document).ready(function() {
		/* top1 */
		$(".latest-top1").mouseenter(function() {
			$(".latest-text_1").animate({
				height : "100px"
			});
		});
		$(".latest-top1").mouseleave(function() {
			$(".latest-text_1").animate({
				height : "60px"
			});
		});

		/* top2 */
		$(".latest-top2").mouseenter(function() {
			$(".latest-text_2").animate({
				height : "100px"
			});
		});
		$(".latest-top2").mouseleave(function() {
			$(".latest-text_2").animate({
				height : "60px"
			});
		});

		/* top3 */
		$(".latest-top3").mouseenter(function() {
			$(".latest-text_3").animate({
				height : "100px"
			});
		});
		$(".latest-top3").mouseleave(function() {
			$(".latest-text_3").animate({
				height : "60px"
			});
		});

		/* top4 */
		$(".latest-top4").mouseenter(function() {
			$(".latest-text_4").animate({
				height : "100px"
			});
		});
		$(".latest-top4").mouseleave(function() {
			$(".latest-text_4").animate({
				height : "60px"
			});
		});

		/* top5 */
		$(".latest-top5").mouseenter(function() {
			$(".latest-text_5").animate({
				height : "100px"
			});
		});
		$(".latest-top5").mouseleave(function() {
			$(".latest-text_5").animate({
				height : "60px"
			});
		});

		/* top6 */
		$(".latest-top6").mouseenter(function() {
			$(".latest-text_6").animate({
				height : "100px"
			});
		});
		$(".latest-top6").mouseleave(function() {
			$(".latest-text_6").animate({
				height : "60px"
			});
		});
	});
</script>

</head>
<body>

	<!-- Navigation -->
	<%@include file="./Shared/NavHome.jsp"%>
	<%@include file="./Shared/navbar2.jsp"%>

	<!-- Slide bar -->
	<%@include file="./Shared/slidebar.jsp"%>



	<h2></h2>
	<div class="content">
		<!--banner-bottom-->
		<div class="ban-bottom-w3l">
			<div class="container">
				<div class="col-md-6 ban-bottom">
					<div class="ban-top">
						<img src="<c:url value="/resources/Image/banner/p1.jpg"/>"
							class="men1" alt="" />
						<div class="ban-text">
							<h3>Men's Clothing</h3>
						</div>
						<div class="ban-text2 hvr-sweep-to-top">

							<div class="card">
								<div class="side">
									<h3>
										50% <span>Off/-</span>
									</h3>
								</div>
								
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-6 ban-bottom3">
					<div class="ban-top">
						<img src="<c:url value="/resources/Image/banner/p2.jpg"/>"
							class="img-responsive" alt="" />
						<div class="ban-text1">
							<h3>Women's Clothing</h3>
						</div>
					</div>
					<div class="ban-img">
						<div class=" ban-bottom1">
							<div class="ban-top">
								<img src="<c:url value="/resources/Image/banner/p3.jpg"/>"
									class="img-responsive" alt="" />
								<div class="ban-text3">
									<h3>T - Shirt</h3>
								</div>
							</div>
						</div>
						<div class="ban-bottom2">
							<div class="ban-top">
								<img src="<c:url value="/resources/Image/banner/p4.jpg"/>"
									class="img-responsive" alt="" />
								<div class="ban-text4">
									<h3>Hand Bag</h3>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!--new-arrivals-->
	<div class="new-arrivals-w3agile">
		<div class="container">
			<h2 class="tittle">New Arrivals</h2>
			<div class="arrivals-grids">
				<div class="col-md-3 arrival-grid simpleCart_shelfItem">
					<div class="grid-arr">
						<div class="grid-arrival">
							<figure>
								<a href="#" class="new-gri" data-toggle="modal"
									data-target="#myModal1">
									<div class="grid-img">
										<a href="http://localhost:8080/ShopFront/viewProduct/524"
											class=""><img
											src="${pageContext.request.contextPath}/resources/Image/banner/p6.jpg"
											class="img-top img-responsive" alt="" />
											<img
											src="${pageContext.request.contextPath}/resources/Image/banner/p5.jpg"
											class="img-responsive" alt="" />
											</a>
									</div>
								</a>
							</figure>
						</div>
						<div class="ribben">
							<p>NEW</p>
						</div>
						<div class="ribben1">
							<p>SALE</p>
						</div>
						<div class="block">
							<div class="starbox small ghosting"></div>
						</div>
						<div class="women">
							<h6>
								<a href="single.html">Sed ut perspiciatis unde</a>
							</h6>
							<span class="size">XL / XXL / S </span>
							<p>
								<del>$100.00</del>
								<em class="item_price">$70.00</em>
							</p>
							<a
								href="${pageContext.request.contextPath}/addToCart/${pro.prodid}?qty=1"
								data-text="Add To Cart" class="my-cart-b item_add">Add To
								Cart</a>
						</div>
					</div>
				</div>
				<div class="col-md-3 arrival-grid simpleCart_shelfItem">
					<div class="grid-arr">
						<div class="grid-arrival">
							<figure>
								<a href="#" class="new-gri" data-toggle="modal"
									data-target="#myModal2">
									<div class="grid-img">
										<a href="http://localhost:8080/ShopFront/viewProduct/525">
										<img
											src="${pageContext.request.contextPath}/resources/Image/banner/p7.jpg"
											class="img-top img-responsive" alt="" />
											<img src="${pageContext.request.contextPath}/resources/Image/banner/p8.jpg"
											class="img-responsive" alt="" /></a>
									</div>
								</a>
							</figure>
						</div>
						<div class="ribben2">
							<p>OUT OF STOCK</p>
						</div>
						<div class="block">
							<div class="starbox small ghosting"></div>
						</div>
						<div class="women">
							<h6>
								<a href="single.html">Sed ut perspiciatis unde</a>
							</h6>
							<span class="size">XL / XXL / S </span>
							<p>
								<del>$100.00</del>
								<em class="item_price">$70.00</em>
							</p>
							<a
								href="${pageContext.request.contextPath}/addToCart/${pro.prodid}?qty=1"
								data-text="Add To Cart" class=" my-cart-b item_add">Add To
								Cart</a>
						</div>
					</div>
				</div>
				<div class="col-md-3 arrival-grid simpleCart_shelfItem">
					<div class="grid-arr">
						<div class="grid-arrival">
							<figure>
								<a href="#" class="new-gri" data-toggle="modal"
									data-target="#myModal3">

									<div class="grid-img">
										<a href="http://localhost:8080/ShopFront/viewProduct/526">
										<img
											src="${pageContext.request.contextPath}/resources/Image/banner/p10.jpg"
											class="img-top img-responsive" alt="" />
										<img src="${pageContext.request.contextPath}/resources/Image/banner/p9.jpg"
											class="img-responsive" alt="" /></a>
									</div>
								</a>
							</figure>
						</div>
						<div class="ribben1">
							<p>SALE</p>
						</div>
						<div class="block">
							<div class="starbox small ghosting"></div>
						</div>
						<div class="women">
							<h6>
								<a href="single.html">Sed ut perspiciatis unde</a>
							</h6>
							<span class="size">XL / XXL / S </span>
							<p>
								<del>$100.00</del>
								<em class="item_price">$70.00</em>
							</p>
							<a
								href="${pageContext.request.contextPath}/addToCart/${pro.prodid}?qty=1"
								data-text="Add To Cart" class="my-cart-b item_add">Add To
								Cart</a>
						</div>
					</div>
				</div>
				<div class="col-md-3 arrival-grid simpleCart_shelfItem">
					<div class="grid-arr">
						<div class="grid-arrival">
							<figure>
								<a href="#" class="new-gri" data-toggle="modal"
									data-target="#myModal4">

									<div class="grid-img">
										<a href="http://localhost:8080/ShopFront/viewProduct/802"
											class=""><img
											src="${pageContext.request.contextPath}/resources/Image/banner/t2.jpg"
											class="img-responsive" alt="" /></a>
									</div>
								</a>
							</figure>
						</div>
						<div class="block">
							<div class="starbox small ghosting"></div>
						</div>
						<div class="women">
							<h6>
								<a href="single.html">Sed ut perspiciatis unde</a>
							</h6>
							<span class="size">XL / XXL / S </span>
							<p>
								<del>$100.00</del>
								<em class="item_price">$70.00</em>
							</p>
							<a href=""
								${pageContext.request.contextPath}/addToCart/${pro.prodid}?qty=1
								" data-text="Add To Cart" class="my-cart-b item_add">Add To
								Cart</a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--new-arrivals-->
	<!--Products-->
	<div class="latest-w3">
		<div class="container">
			<h3 class="tittle1">Latest Fashion Trends</h3>
			<div class="latest-grids">
				<div class="col-md-4 latest-grid">
					<div class="latest-top1">
						<img
							src="${pageContext.request.contextPath}/resources/Image/banner/l1.jpg"
							class="img-responsive" alt="" />
						<div class="latest-text_1">
							<h3>Men</h3>
						</div>
						<div class="latest-text2 hvr-sweep-to-top">
							<h3>-50%</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 latest-grid">
					<div class="latest-top2">
						<img
							src="${pageContext.request.contextPath}/resources/Image/banner/l2.jpg"
							class="img-responsive" alt="" />
						<div class="latest-text_2">
							<h3>Shoes</h3>
						</div>
						<div class="latest-text2 hvr-sweep-to-top">
							<h3>-20%</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 latest-grid">
					<div class="latest-top3">
						<img
							src="${pageContext.request.contextPath}/resources/Image/banner/l3.jpg"
							class="img-responsive" alt="" />
						<div class="latest-text_3">
							<h3>Women</h3>
						</div>
						<div class="latest-text2 hvr-sweep-to-top">
							<h3>-50%</h3>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="latest-grids">
				<div class="col-md-4 latest-grid">
					<div class="latest-top4">
						<img
							src="${pageContext.request.contextPath}/resources/Image/banner/l4.jpg"
							class="img-responsive" alt="" />
						<div class="latest-text_4">
							<h3>Watch</h3>
						</div>
						<div class="latest-text2 hvr-sweep-to-top">
							<h3>-45%</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 latest-grid">
					<div class="latest-top5">
						<img
							src="${pageContext.request.contextPath}/resources/Image/banner/l5.jpg"
							class="img-responsive" alt="" />
						<div class="latest-text_5">
							<h3>Bag</h3>
						</div>
						<div class="latest-text2 hvr-sweep-to-top">
							<h3>-10%</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 latest-grid">
					<div class="latest-top6">
						<img
							src="${pageContext.request.contextPath}/resources/Image/banner/l6.jpg"
							class="img-responsive" alt="" />
						<div class="latest-text_6">
							<h3>Cameras</h3>
						</div>
						<div class="latest-text2 hvr-sweep-to-top">
							<h3>-30%</h3>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--content-->
	<!---footer--->
	<div class="footer-w3l bg-primary">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<h3>About</h3>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
						aliquam erat volutpat.</p>
					<div class="social-icon">
						<a href="#"><i class="icon"></i></a> <a href="#"><i
							class="icon1"></i></a> <a href="#"><i class="icon2"></i></a> <a
							href="#"><i class="icon3"></i></a>
					</div>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>My Account</h3>
					<ul>
						<li><a class="links" href="checkout.html" class="text-white">Checkout</a></li>
						<li><a class="links" href="login.html" class="text-white">Login</a></li>
						<li><a class="links" href="registered.html"
							class="text-white"> Create Account </a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>Information</h3>
					<ul>
						<li><a class="links" href="http://localhost:8080/ShopFront/"
							class="text-white">Home</a></li>
						<li><a class="links" href="ViewProduct" class="text-white">Products</a></li>
						<li><a class="links" href="codes.html" class="text-white">Short
								Codes</a></li>
						<li><a class="links" href="mail.html" class="text-white">Mail
								Us</a></li>
						<li><a class="links" href="products1.html" class="text-white">products1</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid foot">
					<h3>Contacts</h3>
					<ul>
						<li><i class="glyphicon glyphicon-map-marker"
							aria-hidden="true"></i><a class="links" href="#">E Comertown
								Rd, Westby, USA</a></li>
						<li><i class="glyphicon glyphicon-earphone"
							aria-hidden="true"></i><a class="links" href="#">1
								599-033-5036</a></li>
						<li><i class="glyphicon glyphicon-envelope"
							aria-hidden="true"></i><a class="links"
							href="mailto:example@mail.com"> Ah3925@gmail.com</a></li>

					</ul>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!---footer--->
	<!--copy-->
	<div class="copy-section bg-dark">
		<div class="container">
			<div class="copy-left">
				<p class="text-white">
					&copy; 2018 New Shop . All rights reserved | Design by <a
						href="About Me">Ahmad Hussain</a>
				</p>
			</div>
		</div>
	</div>
	<!--copy-->

</body>
</html>