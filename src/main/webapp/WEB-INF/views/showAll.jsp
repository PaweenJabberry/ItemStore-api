<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/showAll.css"/>
<meta charset="ISO-8859-1">
<title>Show All Item</title>
</head>
<body>
	
	<c:if test="${not empty items}">

		<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">

		<table id="myTable">
		 	<tr class="header">
			    <th style="width:30%;">Id</th>
			    <th style="width:30%;">Name</th>
			    <th style="width:30%;">See more</th>
		  	</tr>
			<c:forEach var="listValue" items="${items}">
			  	<tr>
				    <td>${listValue.getId()}</td>
				    <td>${listValue.getName()}</td>
				    <td>
				    	<form name="display" action="/display/${listValue.getId()}">
							<input type="submit" value="Show">
						</form>
				    </td>
			  	</tr>
			</c:forEach>
		</table>

	</c:if>
	
	<form name="delete" action="/delete" method="POST">
		<h2>Fills a name for remove</h2>
		<input type="text" name="t1"><br><br>
		<input type="submit">
	</form>

<script src="/js/showAll.js"></script>
</body>
</html>