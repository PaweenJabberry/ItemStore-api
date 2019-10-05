<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>

<a href="showItems">Show items</a>
<c:if test="${not empty items}">

		<ul>
			<c:forEach var="listValue" items="${items}">
				<li>Id:${listValue.getId()}	Name:${listValue.getName()}</li>
			</c:forEach>
		</ul>

</c:if>

<form name="delete" action="delete" method="POST">
	<h2>Fills a name for remove</h2>
	<input type="text" name="t1"><br><br>
	<input type="submit">
</form>

</body>
</html>