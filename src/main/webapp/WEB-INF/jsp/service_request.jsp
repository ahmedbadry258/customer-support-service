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

<form:form action="/service-request/" method="post" modelAttribute="serviceRequest">
Description <form:textarea path="description" /><br>

Status <form:select path="status" >
			<c:forEach items="${statusList }" var="status">
			
			<form:option value="${status }" label="${status }" />
			
				
			</c:forEach> 

	</form:select><br>
<input type="submit" value="Submit" />
</form:form>

<c:forEach items="${statusList }" var="status">
<p>${status }</p>
</c:forEach> 
</div>
</body>
</html>