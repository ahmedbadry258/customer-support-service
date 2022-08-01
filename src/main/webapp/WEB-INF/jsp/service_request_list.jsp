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

List OF SR
<table class="table">
	<tr>
		<td>ID</td>
		<td>Description</td>
		<td>Create By</td>
		<td>Created Date</td>
		<td>Commitment Date</td>
		<td>Status</td>
		<td>Response</td>
		<td>Closed By</td>
		<td>Closed Date</td>
		
		<td>Actions</td>
	</tr>
	<c:forEach items="${srs}" var="sr"> 
	<tr>
		<td><a href="service-request/${sr.id }">${sr.id }</a></td>
		<td>${sr.description }</td>
		<td>${sr.createdBy.firstName }${sr.createdBy.lastName }</td>
		<td>${sr.createDate }</td>
		<td>${sr.commitmentDate }</td>
		<td>${sr.status }</td>
		<td>${sr.response }</td>
		<td>${sr.closedBy.firstName }</td>
		<td>${sr. closedDate}</td>
		
		
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