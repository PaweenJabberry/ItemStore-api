<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Item</title>
</head>
<body>
	<form name="add" action="add" method="POST">
		<h2>Fills a information of new item</h2>
		<label>Id : </label>
		<input type="text" name="id"><br><br>
		<label>Name : </label>
		<input type="text" name="name"><br><br>
		<label>Amount : </label>
		<input type="text" name="amount"><br><br>
		<input type="submit">
	</form>
</body>
</html>