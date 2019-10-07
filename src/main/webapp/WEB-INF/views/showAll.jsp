<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Item</title>
</head>
<body>
	<c:if test="${not empty items}">

		<ul>
			<c:forEach var="listValue" items="${items}">
				<p>Id:${listValue.getId()}	Name:${listValue.getName()}</p>
				<form name="display" action="display/${listValue.getId()}">
					<input type="submit" value="Show">
				</form>
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