<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Support Service</title>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>
<div class="container w-75">

List OF Employee
<table class="table">
	<tr>
		<td>ID</td>
		<td>First Name</td>
		<td>Last Name</td>
		<td>Email</td>
		<td>Title</td>
		<td>Store</td>
		<td>Department</td>
		<td>Join Date</td>
		<td>Actions</td>
	</tr>
	<c:forEach items="${employees}" var="employee"> 
	<tr>
		<td>${employee.id }</td>
		<td>${employee.firstName }</td>
		<td>${employee.lastName }</td>
		<td>${employee.email }</td>
		<td>${employee.title }</td>
		<td>${employee.store.name }</td>
		<td>${employee.store.department.name }</td>
		<td>${employee.joinDate }</td>
		<td>
		<a href="#" class="btn btn-warning">Edit</a>
		<a href="#" class="btn btn-danger">Delete</a>
		</td>
	</tr>
	</c:forEach>
</table>

</div>
</body>
</html>