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

List OF Stores
<table class="table">
	<tr>
		<td>ID</td>
		<td>Store Name</td>
		<td>Created Date</td>
		<td>Manager</td>
		<td>Number Of Agent</td>
		<td>Department</td>
		<td>Actions</td>
	</tr>
	<c:forEach items="${stores}" var="store"> 
	<tr>
		<td>${store.id }</td>
		<td>${store.name }</td>
		<td>${store.createdDate }</td>
		<td>${store.manager }</td>
		<td>${store.employees }</td>
		<td>${store.department.name }</td>
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