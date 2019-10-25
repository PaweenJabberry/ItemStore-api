<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/add.css"/>
<meta charset="ISO-8859-1">
<title>Add Item</title>
</head>
<body>
	<h2>Fills a information of new item</h2>
	<div>
	  <form name="add" action="/add" method="POST">
	    <label for="fid">Id : </label>
	    <input type="text" name="id" placeholder="Item id..">
	
	    <label for="lname">Name : </label>
	    <input type="text" name="name" placeholder="Item name..">
	
		<label for="amount">Amount : </label>
	    <input type="text" name="amount" placeholder="Amount..">
	    	  
	    <input type="submit" value="Submit">
	  </form>
	</div>
	
</body>
</html>