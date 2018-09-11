<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>


<table class="table">
  <thead class="thead-dark">
    <tr><h2>User Records</h2></tr>
    <tr>
<th scope="col">UserID</th>
<th scope="col">Email</th>
<th scope="col">Name</th>
<th scope="col">mobile</th>
<th scope="col">Address</th>
<th scope="col">City</th>
<th scope="col">Pin Code</th>
<th scope="col">State</th>
<th scope="col">Country</th>
<th scope="col">Action</th>
</tr>
</thead>
<c:forEach  items="${listShop}" var="Shop"> 
<tr>
<td>${Shop.userid}</td>
<td>${Shop.email}</td>
<td>${Shop.name}</td>
<td>${Shop.mobile}</td>
<td>${Shop.address}</td>
<td>${Shop.city}</td>
<td>${Shop.pincode}</td>
<td>${Shop.state}</td>
<td>${Shop.country}</td>

<td>
<a href="${pageContext.request.contextPath}/EditStudent/${Shop.userid}" class="fas fa-pencil-alt btn btn-info"></a>
<a href="${pageContext.request.contextPath}/DeleteStudent/${Shop.userid}" class="fas fa-trash-alt btn btn-danger"></a></td>
</tr>
</c:forEach>
</table>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>