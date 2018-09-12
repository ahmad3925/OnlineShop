<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>


</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- new -->
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">




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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/myapp.js">
	
</script>

</head>
<body>

	<!-- Navigation -->
	<%@include file="./Shared/NavHome.jsp"%>


	<span class="stext-109 cl4">

		<h3>Shoping Cart</h3>

	</span>


	<!-- Shoping Cart -->
	<tr class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table">
								<thead class="thead-dark">

									<tr>
										<th scope="col">Product</th>
										<th scope="col">Product Name</th>
										<th scope="col">Price</th>
										<th scope="col">Quantity</th>
										<th class="column-5">Total</th>
										<th class="column-5">Remove</th>
									</tr>
								</thead>
								<c:forEach items="${cartList}" var="cart">
									<div class="how-itemcart1">
										<tr>
											<td><img
												src="${pageContext.request.contextPath}/resources/Image/${cart.product.code}/1.jpg"
												height="200" width="200" /></td>
											<td class="column-2">${cart.product.prodName}</td>
											<td class="column-3"><i class="fas fa-rupee-sign"></i>${cart.product.unitPrice}</td>
											<td class="column-4">
												<form
													action="${pageContext.request.contextPath}/updatecart/${cart.product.prodid}">
													<input type="number" max="5" id="qty" min="1" name="qty"
														alt="${cart.product.prodid}" value="${cart.productCount}"
														onchange="update(this)" style="width: 35px;" />
												</form>

											</td>
											<td class="column-5"><i class="fas fa-rupee-sign"></i>${cart.total}</td>

											<td><a href="remove/${cart.id}" data-toggle="tooltip" title="Remove" class="fas fa-times">
											</a> </td>

										</tr>
									</div>
								</c:forEach>
							</table>
						</div>
						<div
							class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">


							<!-- <div
								class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								<a href="#">Update Cart</a>
							</div> -->
						</div>
					</div>
				</div>

				<div class="col-sm-20 col-lg-3 col-xl-5 m-lr-auto m-b-50">
					<div
						class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h3 class="mtext-109 cl2 p-b-30">PRICE DETAILS</h3>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2"> Price(${size} item) </span> <span
									class="mtext-110 cl2"> <i class="fas fa-rupee-sign"></i>${grandTotal}
								</span>
							</div>

							<div class="size-209"></div>
						</div>



						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">Amount Payable </span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2"> <i class="fas fa-rupee-sign"></i>${grandTotal}
								</span>
							</div>
						</div>
						<c:if test="${user.role=='ROLE_USER'}">
							<a href="${pageContext.request.contextPath}/usershow"
								class="btn btn-warning btn-lg round">PLACE ORDER</a>
						</c:if>
						<a href="http://localhost:8080/ShopFront/"
							" class="btn btn-lg btn-info"><span
							class="glyphicon glyphicon-chevron-left"></span> CONTINUE
							SHOPPING</a>
					</div>
				</div>
			</div>
		</div>
		<a></a>
	</tr>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- 	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
 -->


</body>
</html>