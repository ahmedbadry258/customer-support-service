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

details
<form:form modelAttribute="serviceRequest" method="post" action="/sr_response">
<table>
	<tr>
		<td>Service ID</td>
		<td><form:input path="id" readonly="true"/> </td>
		<td>Status</td>
		<td>
			 <form:select path="status" >
				<c:forEach items="${statusList }" var="status">
					<form:option value="${status }" label="${status }" />
				</c:forEach> 
			</form:select>
		</td>
		
	</tr>
		<tr>
		<td>Description</td>
		<td><form:textarea path="description" readonly="true"/></td>
		<td>Response</td>
		<td><form:textarea path="response" /></td>
	</tr>
		</tr>
		<tr>
		
		<td>Created Date</td>
		<td><form:input path="createDate" readonly="true"/></td>
		<td>Closed Date</td>
		<td><form:input path="closedDate" readonly="true"/></td>
	</tr>
	<tr>
		<td>Commitment Date</td>
		<td><form:input path="commitmentDate" readonly="true"/></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Created By</td>
		<td><form:input path="createdBy.fullName" readonly="true"/></td>
		<td>Closed By</td>
		<td><form:input path="closedBy.fullName" readonly="true"/></td>
		
	</tr>
	<tr>
		<td>Email</td>
		<td><form:input path="createdBy.email" readonly="true"/></td>
		<td>Email</td>
		<td><form:input path="closedBy.email" readonly="true"/></td>
	</tr>
	<tr>
		<td>Store</td>
		<td><form:input path="createdBy.store.name" readonly="true"/></td>
		<td>Store</td>
		<td><form:input path="closedBy.store.name" readonly="true"/></td>
	</tr>
 	
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td><input type="submit" value="Submit"></td>
	</tr>
</table>
</form:form>
</div>
</body>
</html>