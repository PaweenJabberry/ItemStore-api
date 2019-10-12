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

	<form name="update" action="/update" method="POST">
		<label>ID: </label>
		<input readonly="readonly" type="text" name="itemId" id="itemId" value="${items.getId()}"><br><br>
		
		<label>Name: </label>
		<input readonly="readonly" type="text" name="itemName" id="itemName" value="${items.getName()}"><br><br>
		
		<label>Amount: </label>
		<input readonly="readonly" type="text" name="itemAmount" id="itemAmount" value="${items.getAmount()}"><br><br>
		
		<button type="button" onclick="Edit()">Edit</button>
		
		<input type="hidden" type="text" name="oldId" value="${items.getId()}">
		<input type="submit" value="Update">
		<input type="button" value="Cancel" onClick="document.location.reload(true)">
	</form>
	
	<form name="showAll" action="/showAll">
		<input type="submit" value="Back">
	</form>
	
	
</c:if>

<c:if test="${empty items}">

	<p>False</p>

</c:if>

<script src="/js/edit.js"></script>
</body>
</html>