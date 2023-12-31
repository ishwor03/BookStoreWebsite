<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0">
	<title>Write a Review - Online Book Store</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
</head>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />

		<form  action="submit_review" method="post" style="max-width: 800px; margin: 0 auto">
				<div class="row">
				  <div class="col"><h2>Your Reviews</h2></div>
				  <div class="col">&nbsp;</div>
					<div class="col"><h4>${loggedCustomer.fullname}</h4></div>
				</div>
				<div class="row">
					<div class="col"><hr/></div>
				</div>
				<div class="row">
					<div class="col-sm">
						<h4>${book.title}</h4>
						<img class="img-fluid" src="data:image/jpg;base64,${book.base64Image}" />
					</div>
					<div class="col">
						<div id="rateYo"></div>
						<input type="hidden" id="rating" name="rating" />
						<input type="hidden" name="bookId" value="${book.bookId}" />
						<div>&nbsp;</div>
						<div>	
						  <input type="text" name="headline" class="form-control" placeholder="Headline or summary for your review (required)" required/>
						</div>
						<div>&nbsp;</div>
					  <div>
						 <textarea name="comment" cols="70" rows="10" class="form-control"
						  placeholder="Write your review details..." required></textarea>
					  </div>
					</div>
				</div>
				<div>&nbsp;</div>
				<div class="row">
					<div class="col text-center">
						<button type="submit" class="btn btn-primary">Submit</button>
						&nbsp;&nbsp;
						<button type="button" onclick="history.go(-1)" class="btn btn-secondary">Cancel</button>
					</div>
				</div>
		</form>
	
	<jsp:directive.include file="footer.jsp" />
</div>
<script type="text/javascript">		
      
      $(document).ready(function(){

		$("#rateYo").rateYo({
			starWidth: "40px",
			fullStar: true,
			onSet: function (rating, rateYoInstance) {
				$("#rating").val(rating);
			}
		});	
	});		
</script>	
</body>
</html>