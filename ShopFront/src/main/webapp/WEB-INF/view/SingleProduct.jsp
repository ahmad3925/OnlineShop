<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<spring:url value="/resources/Image" var="image"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<table>
<tr><td><img src="${image}/${product.code}.jpg"/></td></tr>
<tr><td>${product.prodName}</td></tr>
<tr><td>${product.description}</td></tr>
<tr><td>${product.unitPrice}</td></tr>
<tr><td><button>Add to Cart</button></td></tr>
</table>


</body>
</html>