<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/css/showAll.css">
<!--===============================================================================================-->	
	<link rel="icon" type="/css/Table_Fixed_Header/image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/Table_Fixed_Header/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/Table_Fixed_Header/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/Table_Fixed_Header/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/Table_Fixed_Header/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/Table_Fixed_Header/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/Table_Fixed_Header/css/util.css">
	<link rel="stylesheet" type="text/css" href="/css/Table_Fixed_Header/css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.w3-button {width:150px;}
</style>
<meta charset="ISO-8859-1">
<title>Show All Item</title>
</head>
<body>
	
	<c:if test="${not empty items}">

	<div class="limiter">
	<div class="container-table100">
	<div class="wrap-table100">
	<div>
		<style scoped>
    		input[type=text] {
			  width: 100%;
			  box-sizing: border-box;
			  border: 2px solid #ccc;
			  border-radius: 4px;
			  font-size: 16px;
			  background-size: 30px 30px;
			  background-color: Silver;
			  background-image: url('https://www.konfest.com/wp-content/uploads/2019/05/Konfest-PNG-JPG-Image-Pic-Photo-Free-Download-Royalty-Unlimited-clip-art-sticker-icons-search-symbol-find-magnifying-glass-28.png');
			  background-position: 10px 10px; 
			  background-repeat: no-repeat;
			  padding: 12px 20px 12px 40px;
			  -webkit-transition: width 0.4s ease-in-out;
			  transition: width 0.4s ease-in-out;
			}
			
    	</style>
		<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
	</div>
	
	<div class="table100 ver1 m-b-110">
			<div class="table100-head">
				<table>
					<thead>
						<tr class="row100 head">
							<th class="cell100 column1">Id</th>
							<th class="cell100 column1">Name</th>
							<th class="cell100 column1">See more</th>
							<th class="cell100 column1">Delete</th>
						</tr>
					</thead>
				</table>
			</div>

			<div class="table100-body js-pscroll">
				<table id="myTable">
					<tbody>
					
						<c:forEach var="listValue" items="${items}">
						  	<tr class="row100 body">
							    <td class="cell100 column1">${listValue.getId()}</td>
							    <td class="cell100 column1">${listValue.getName()}</td>
							    <td class="cell100 column1">
							    	<form name="display" action="/display/${listValue.getId()}">
										<input type="submit" class="w3-button w3-green" value="Show">
									</form>
							    </td>
							    <td class="cell100 column1">
							    	<form name="delete" action="/delete" method="POST">
							    		<input type="hidden" name="t1" value="${listValue.getName()}">
										<input type="submit" class="w3-button w3-red" value="Delete">
									</form>
							    </td>
						  	</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
	</div>
	</div>
	</div>
	</div>

	</c:if>
	


<script src="/js/showAll.js"></script>
<!--===============================================================================================-->	
	<script src="/css/Table_Fixed_Header/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/css/Table_Fixed_Header/vendor/bootstrap/js/popper.js"></script>
	<script src="/css/Table_Fixed_Header/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/css/Table_Fixed_Header/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/css/Table_Fixed_Header/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="/css/Table_Fixed_Header/js/main.js"></script>
</body>
</html>