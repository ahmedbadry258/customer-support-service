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

List OF Departments
<table class="table">
	<tr>
		<td>ID</td>
		<td>Name</td>
		<td>Number Of Employee</td>
		<td>Actions</td>
	</tr>
	<c:forEach items="${departments}" var="department"> 
	<tr>
		<td>${department.id }</td>
		<td>${department.name }</td>
		<td>${department.employees.size() }</td>
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