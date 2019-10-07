<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Information</title>
</head>
<body>
<c:if test="${not empty items}">

	<div id="section1">
		<p id="line1">ID:${items.getId()}</p>
	</div>
	<div id="section2">
		<p id="line2">Name:${items.getName()}</p>
	</div>
	<div id="section3">
		<p id="line3">Amount:${items.getAmount()}</p>
	</div>

</c:if>

<c:if test="${empty items}">

	<p>False</p>

</c:if>

</body>
</html>