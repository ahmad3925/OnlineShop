<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
	integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ"
	crossorigin="anonymous">

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="invoice-title">
				<h2>Invoice</h2>
				<h3 class="pull-right">Order # ${Order_Table.id}</h3>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-6">

					<address>
						<strong>Billed To:</strong><br> ${user.name}<br>${user.email}
						<br> ${user.address} <br>${user.locality}<br>
						${user.city}, ${user.landmark}, ${user.pincode} <br>
						<br> ${user.mobile}
					</address>
				</div>
				<div class="col-xs-6 text-right">
					<address>
						<strong>Billed To:</strong><br> ${user.name}<br>${user.email}
						<br> ${user.address} <br>${user.locality}<br>
						${user.city}, ${user.landmark}, ${user.pincode} <br>
						<br> ${user.mobile}
					</address>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<address>
						<strong>Payment Method:</strong><br> Visa ending **** 4242<br>
						${user.email}
					</address>
				</div>
				<div class="col-xs-6 text-right">
					<address>
						<strong>Order Date:</strong><br>
						<%
							Date date = new Date();
							out.print("<h5 align = \"\">" + date.toString() + "</h5>");
						%><br>
					</address>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<strong>Order summary</strong>
					</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table">
							<thead class="thead-dark">

								<tr>
									<td><strong>Item</strong></td>

									<th scope="col">Price</th>
									<th scope="col">Quantity</th>
									<th scope="col">total</th>

								</tr>
							</thead>

							<c:forEach items="${cartList}" var="cart">
								<div class="how-itemcart1">
									<tr>
										<td class="column-2">${cart.product.prodName}</td>
										<td class="column-3"><i class="fas fa-rupee-sign"></i>${cart.product.unitPrice}</td>
										<td class="column-4">${cart.productCount}</td>
										<td class="column-5"><i class="fas fa-rupee-sign"></i>${cart.total}</td>


									</tr>
								</div>
							</c:forEach>


							<tr>
								<td class="no-line"></td>
								<td class="no-line"></td>
								<td class="no-line text-center"><strong>Total</strong></td>
								<td class="no-line text-right"><i class="fas fa-rupee-sign"></i>${grandTotal}</td>
							</tr>
						</table>
					</div>
					<a href="http://localhost:8080/ShopFront/"
						" class="btn btn-lg btn-info"><span
						class="glyphicon glyphicon-chevron-left"></span> CONTINUE SHOPPING</a>

					</tbody>
					</table>
				</div>
			</div>
		</div>