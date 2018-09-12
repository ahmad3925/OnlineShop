<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url value="/resources/Image" var="image" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js">
</script>

<style>

.Mainimage{ 
      position: relative;
	  width: 350px;
	  height: 390px;}

	  .img,{position: absolute;}
	  
	  .img{left:0px;}
	  
	  .over{z-index: 90;
	        box-shadow: 0 0 10px black;
			cursor:pointer;
			}
	  

</style>

<!-- zoom -->
<script type="text/javascript">
$(function(){
	
	var mousein=
	function(){
	$(this).css("opacity", "1").addClass("over")
	.animate({height:"500px", width:"485px", opacity:"1"}); 
	}
	
	var mouseout=
	function(){ $(this).removeClass("over")
	.animate({width:"350px",height:"390px"})}
	
	$(".Mainimage").children().hover(mousein,mouseout);
		
	
});
</script>





<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>

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

<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<title>single Product</title>

</head>
<body>

	<!-- Navigation -->
	<%@include file="./Shared/NavHome.jsp"%>


	<div id="all">

		<div id="content">
			<div class="container">

				<div class="col-md-12">
					<ul class="breadcrumb">
						<li><a href="http://localhost:8080/ShopFront/">Home</a></li>
								<li><a href="${pageContext.request.contextPath}/ViewProduct">View Products</a></li>
					<!-- 	<li><a href="#">Men</a></li> -->
						<li><a href="${pageContext.request.contextPath}/ViewProduct/${category.categoryId}">${category.categoryName}</a></li>
						<li>${product.prodName}</li>
					</ul>

				</div>


				<div class="col-md-9">

					<div class="row" id="productMain">
						<div class="col-sm-6">
							<div class="Mainimage">
								<img src="${image}/${product.code}/1.jpg" alt=""
									class="img" width="350px" height="390px"
									id="PlaceHolder">
							</div>

						</div>	
						<div class="col-sm-6">
							<div class="box">
								<h1 class="text-center">${product.prodName}</h1>
								<p class="goToDescription">
									<a href="#details" class="scroll-to">Scroll to product
										details, material & care and sizing</a>
								</p>
						
								
						
								<p class="price">
									<i class="fas fa-rupee-sign"></i>${product.unitPrice}</p>


								<p class="text-center buttons">
									<a
										href="${pageContext.request.contextPath}/addToCart/${product.prodid}?qty=1"
										class="btn btn-primary"><i class="fa fa-shopping-cart"></i>
										Add to cart</a> <a href="basket.html" class="btn btn-default"><i
										class="fa fa-heart"></i> Add to wishlist</a>
								</p>


							</div>


							<div class="row" id="thumbs">
								<div class="col-xs-4">
									<a href="" title="Switch" id="id_1" class="menulink"> <img
										src="${image}/${product.code}/1.jpg" alt=""
										class="img-responsive">
									</a>
								</div>
								<div class="col-xs-4">
									<a href="" title="Switch" id="id_2" class="menulink"> <img
										src="${image}/${product.code}/2.jpg" alt=""
										class="img-responsive">
									</a>
								</div>
								<div class="col-xs-4">
									<a href="" title="Switch" id="id_3" class="menulink"> <img
										src="${image}/${product.code}/3.jpg" alt=""
										class="img-responsive">
									</a>
								</div>
								<div class="col-xs-4">
									<a href="" title="Switch" id="id_4" class="menulink"> <img
										src="${image}/${product.code}/4.jpg" alt=""
										class="img-responsive">
									</a>
								</div>
							</div>

						</div>

					</div>


					<div class="box" id="details">
						
						<h3>Product details</h3>
						<p>White lace top, woven, has a round neck, short sleeves, has
							knitted lining attached</p>
						<h3>Material & care</h3>
						<ul>
							<li>Polyester</li>
							<li>Machine wash</li>
						</ul>
						<h3>Size & Fit</h3>
						<ul>
							<li>Regular fit</li>
							<li>The model (height 5'8" and chest 33") is wearing a size
								S</li>
						</ul>

						<blockquote>
							<p>
								<em>Define style this season with Armani's new range of
									trendy tops, crafted with intricate details. Create a chic
									statement look by teaming this lace number with skinny jeans
									and pumps.</em>
							</p>
						</blockquote>

						<hr>
						<div class="social">
							<h3>Show it to your friends</h3>
							<p>
								<a href="#" class="external facebook" data-animate-hover="pulse"><i
									class="fa fa-facebook"></i></a> <a href="#" class="external gplus"
									data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
								<a href="#" class="external twitter" data-animate-hover="pulse"><i
									class="fa fa-twitter"></i></a> <a href="#" class="email"
									data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
							</p>
						</div>
					</div>

					<di v class="row same-height-row">
					<div class="col-md-3 col-sm-6">
						<div class="box same-height">
							<h3>You may also like these products</h3>
						</div>
					</div>

					<div class="col-md-3 col-sm-6">
						<div class="product same-height">
							<div class="flip-container">
								<div class="flipper">
									<div class="front">
										<a href="detail.html"> <img src="img/product2.jpg" alt=""
											class="img-responsive">
										</a>
									</div>
									<div class="back">
										<a href="detail.html"> <img src="img/product2_2.jpg"
											alt="" class="img-responsive">
										</a>
									</div>
								</div>
							</div>
							<a href="detail.html" class="invisible"> <img
								src="img/product2.jpg" alt="" class="img-responsive">
							</a>
							<div class="text">
								<h3>Fur coat</h3>
								<p class="price">$143</p>
							</div>
						</div>
						<!-- /.product -->
					</div>

					<div class="col-md-3 col-sm-6">
						<div class="product same-height">
							<div class="flip-container">
								<div class="flipper">
									<div class="front">
										<a href="detail.html"> <img src="img/product1.jpg" alt=""
											class="img-responsive">
										</a>
									</div>
									<div class="back">
										<a href="detail.html"> <img src="img/product1_2.jpg"
											alt="" class="img-responsive">
										</a>
									</div>
								</div>
							</div>
							<a href="detail.html" class="invisible"> <img
								src="img/product1.jpg" alt="" class="img-responsive">
							</a>
							<div class="text">
								<h3>Fur coat</h3>
								<p class="price">$143</p>
							</div>
						</div>
						<!-- /.product -->
					</div>


					<div class="col-md-3 col-sm-6">
						<div class="product same-height">
							<div class="flip-container">
								<div class="flipper">
									<div class="front">
										<a href="detail.html"> <img src="img/product3.jpg" alt=""
											class="img-responsive">
										</a>
									</div>
									<div class="back">
										<a href="detail.html"> <img src="img/product3_2.jpg"
											alt="" class="img-responsive">
										</a>
									</div>
								</div>
							</div>
							<a href="detail.html" class="invisible"> <img
								src="img/product3.jpg" alt="" class="img-responsive">
							</a>
							<div class="text">
								<h3>Fur coat</h3>
								<p class="price">$143</p>

							</div>
						</div>
						<!-- /.product -->
					</div>
				</div>



			</div>
			<!-- /.col-md-9 -->
		</div>
		<!-- /.container -->
	</div>
</body>
</html>