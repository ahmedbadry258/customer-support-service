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
<form:form action="/departments/"  modelAttribute="department" method="post">
<label>Department Name :</label>
<form:input path="name"/>
<input type="submit" value="submit">
</form:form>


</div>
</body>
</html>