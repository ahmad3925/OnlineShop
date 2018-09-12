<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("img").mouseenter
    (function(){
        $("img").elevateZoom();    
       
    });
});
</script> 



<title>View Product</title>




</head>
<body>

	<!-- Navigation -->
	<%@include file="./Shared/NavHome.jsp"%>

	<div class="filter-attribute-container filter-price col-lg-3 bg-info">
		<div data-role="header">
			<h1>Price filter</h1>
		</div>
		<div data-role="main" class="ui-content">
			<form method="post"
				action="${pageContext.request.contextPath}/filter">
				<div data-role="rangeslider">
					<label for="price-min">Price:</label> <input type="range"
						name="min" id="price-min" value="200" min="0" max="1000">
					<label for="price-max">Price:</label> <input type="range"
						name="max" id="price-max" value="500" min="0" max="1000">
				</div>
				<input type="submit" data-inline="true" value="Submit">
			</form>
		</div>


		<div class="filter-attribute-container filter-categories">
			<label>Categories</label>
			<div class="list-group-item">
				<div id="filter-group3">
					<c:forEach items="${catList}" var="cat">
						<br>
						<a class="a-filter add-filter nav-link"
							href="${pageContext.request.contextPath}/ViewProduct/${cat.categoryId}"
							id="cat_${cat.categoryId}">${cat.categoryName}</a>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="filter-attribute-container filter-manufacturer">
			<label>Manufacturer</label>
			<div class="list-group-item">
				<div id="filter-group2">
					<a class="a-filter add-filter" href="javascript:void(0);" name="12"><label
						for="checkboxes-3"> <input name="checkboxes"
							id="checkboxes-3" value="3" type="checkbox"> Calvin Klein
							(6)
					</label></a><br> <a class="a-filter add-filter" href="javascript:void(0);"
						name="13"><label for="checkboxes-3"> <input
							name="checkboxes" id="checkboxes-3" value="3" type="checkbox">
							Chanel (4)
					</label></a><br> <a class="a-filter add-filter" href="javascript:void(0);"
						name="11"><label for="checkboxes-3"> <input
							name="checkboxes" id="checkboxes-3" value="3" type="checkbox">
							Diesel (7)
					</label></a><br> <a class="a-filter add-filter" href="javascript:void(0);"
						name="15"><label for="checkboxes-3"> <input
							name="checkboxes" id="checkboxes-3" value="3" type="checkbox">
							ferragamo (14)
					</label></a><br> <a class="a-filter add-filter" href="javascript:void(0);"
						name="17"><label for="checkboxes-3"> <input
							name="checkboxes" id="checkboxes-3" value="3" type="checkbox">
							louis vuitton (16)
					</label></a>
				</div>
			</div>
			<div class="filter-attribute-container filter-select by color">
				<label>Select By Color</label>
				<div class="list-group-item">
					<div id="filter-group1">
						<a class="a-filter add-filter" href="javascript:void(0);" name="4"><label
							for="checkboxes-3"> <input name="checkboxes"
								id="checkboxes-3" value="3" type="checkbox"> Black (8)
						</label></a> <br> <a class="a-filter add-filter"
							href="javascript:void(0);" name="8"><label for="checkboxes-3">
								<input name="checkboxes" id="checkboxes-3" value="3"
								type="checkbox"> Brown (6)
						</label></a><br> <a class="a-filter add-filter"
							href="javascript:void(0);" name="2"><label for="checkboxes-3">
								<input name="checkboxes" id="checkboxes-3" value="3"
								type="checkbox"> Green (6)
						</label></a><br> <a class="a-filter add-filter"
							href="javascript:void(0);" name="6"><label for="checkboxes-3">
								<input name="checkboxes" id="checkboxes-3" value="3"
								type="checkbox"> Pink (6)
						</label></a> <br> <a class="a-filter add-filter"
							href="javascript:void(0);" name="5"><label for="checkboxes-3">
								<input name="checkboxes" id="checkboxes-3" value="3"
								type="checkbox"> Red (4)
						</label></a><br> <a class="a-filter add-filter"
							href="javascript:void(0);" name="7"><label for="checkboxes-3">
								<input name="checkboxes" id="checkboxes-3" value="3"
								type="checkbox"> Yellow (13)
						</label></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:if test="${empty prodlist}">
		<p class="col-lg-6"><%@include file="./Shared/NoResult.jsp"%></p>
	</c:if>
	<c:if test="${!empty prodlist}">

		<div class="sorter col-lg-9">
			<label class="col-md-2 control-label for="input-sort">Sort
				By:</label> <select id="input-sort" class="form-control col-lg-2"
				onchange="ocfilter.filter(this.value);" style="height: 30px;">
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=p.sort_order&order=ASC"
					selected="selected">Default</option>
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=pd.name&order=ASC">Name
					(A - Z)</option>
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=pd.name&order=DESC">Name
					(Z - A)</option>
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=p.price&order=ASC">Price
					(Low &gt; High)</option>
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=p.price&order=DESC">Price
					(High &gt; Low)</option>
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=rating&order=DESC">Rating
					(Highest)</option>
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=rating&order=ASC">Rating
					(Lowest)</option>
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=p.model&order=ASC">Model
					(A - Z)</option>
				<option
					value="http://elomus3.demo.towerthemes.com/index.php?route=product/ocfilter/category&path=21&sort=p.model&order=DESC">Model
					(Z - A)</option>
			</select>
		</div>
		<div class=""col-lg-6"">

			<ul class="breadcrumb">
				<li><a href="http://localhost:8080/ShopFront/">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/ViewProduct">View
						Products</a></li>

			</ul>


		</div>
		<c:set var="count" value="0" />
		<div class="col-lg-5">
			<table id=tab>
				<tr id="tablerow">
					<c:forEach items="${prodlist}" var="pro">
						<c:set var="count" value="${count+1}" />

						<td><a href="viewProduct/${pro.prodid}" class=""><img id="image"
								src="${pageContext.request.contextPath}/resources/Image/${pro.code}/1.jpg"
								height="250px" width="250px" /></a><br> ${pro.prodName}<br>
							<i class="fas fa-rupee-sign"></i>${pro.unitPrice}<br>
							${pro.description} <br></td>
						<c:if test="${count%4==0}">
				</tr>
				<tr id="tablerow">
					</c:if>
					</c:forEach>
				</tr>
			</table>
		</div>
	</c:if>

	<script>
/* $('#tab') */
var table='';
var rows=10;
var cols=4;
for(var r= 0; r < rows; r++)
	{
	table +='<tr>';
	for(var c=0; c < cols: c++)
		{
		table +='<td>' + $(#'tableorw') + '</td>';
		}
	
	table +='</tr>';
	
	
	}
document.write(table);
</script>

</body>
</html>