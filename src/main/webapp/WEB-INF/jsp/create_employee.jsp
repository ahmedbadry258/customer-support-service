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
<form:form action="/employees/"  modelAttribute="employee" method="post">
<label>First Name :</label>
<form:input path="firstName"/><br>
<label>Last Name :</label>
<form:input path="lastName"/><br>
<label>Email :</label>
<form:input path="email"/><br>
<label>Join Date :</label>
<form:input path="joinDate" type="date" /><br>
<label>Title :</label>
<form:select path="title" name="title">
	<form:option value="Agent" label="Agent"/>
	<form:option value="Agent" label="Manager"/>
</form:select><br>

Store : <form:select path="store" >
				<form:option value="---------" label="-----"/>
				<c:forEach items="${stores}" var="store">
					<form:option value="${store.id}" label="${store.name}"/>
				</c:forEach>

			</form:select>
<br>
<input type="submit" value="submit">
</form:form>
</div>
</body>
</html>