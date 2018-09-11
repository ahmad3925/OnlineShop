<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!Doctype HTML>
<form:form action="demo" modelAttribute="product" method="post" enctype="multipart/form-data">
<form:input type="file" path="file" name="file"/>
<input type="submit" value="Submit"/>
</form:form>