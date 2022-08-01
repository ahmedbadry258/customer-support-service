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
<form:form action="/stores/"  modelAttribute="store" method="post">
<label>Store name :</label>
<form:input path="name" />

Department :<form:select path="department"   >
				<form:option value="---------" label="-----"/>
				<c:forEach items="${departments }" var="department">
					<form:option value="${ department.id}" label="${ department.name}"/>
				</c:forEach>

			</form:select>
	


<input type="submit" value="submit">
</form:form>


</div>
</body>
</html>