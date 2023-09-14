<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0">
	<title>Review Posted - Online Book Store</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
</head>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />
     
     <div class="row">&nbsp;</div>

		<div class="row">
				  <div class="col"><h2>Your Reviews</h2></div>
				  <div class="col">&nbsp;</div>
					<div class="col"><h4>${loggedCustomer.fullname}</h4></div>
				</div>
				<div class="row">
					<div class="col"></div>
				</div>
				<div class="row">
					<div class="col-sm">
						<h4>${book.title}</h4>
						<img class="img-fluid" src="data:image/jpg;base64,${book.base64Image}" />
					</div>
					
					<div class="row">
					  <div class="col col-sm-4">&nbsp;</div>
					    <h4>Your review has been posted. Thank you!</h4>
					  </div>
					</div>
	<jsp:directive.include file="footer.jsp" />
	</div>
</body>
</html>