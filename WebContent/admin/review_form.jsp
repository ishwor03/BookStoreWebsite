<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Edit Review" />
</jsp:include>
	<link rel="stylesheet" href="../css/style.css" >
</head>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />
	
	<div class="row">&nbsp;</div>
          
          <div align="center">
			<div class="col-sm-8">
				<div class="card">
					<div class="card-header text-white" style="background-color: #00AA9E;">
						<div class="text-center">
		<h2>Edit Review</h2>
	</div>
	</div>
	
		<form action="update_review" method="post">
		<input type="hidden" name="reviewId" value="${review.reviewId}">

		
			<div class="card-body" >
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Book:</label>
					<div class="col-sm-6">
						<input class="form-control" value="${review.book.title}" readonly="readonly" >
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Rating:</label>
					<div class="col-sm-6">
						<input class="form-control" value="${review.rating}" readonly="readonly" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Customer:</label>
					<div class="col-sm-6">
						<input class="form-control" value="${review.customer.fullname}" readonly="readonly" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Headline:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="headline" value="${review.headline}" required />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Comment:</label>
					<div class="col-sm-6">
						<textarea rows="5" cols="70" name="comment" class="form-control" required>${review.comment}</textarea>
					</div>
				</div>

		<div>&nbsp;</div>
		 <div class="text-center">
		     <button type="submit" class="btn btn-primary">Save</button>&nbsp;&nbsp;&nbsp;
			 <button type="button" class="btn btn-secondary" onclick="history.go(-1);">Cancel</button>
		 </div>
	</div>	 
		 </form>
		</div>	
		</div>	
		</div>
	</div>
	<div>&nbsp;</div>
	<jsp:directive.include file="footer.jsp" />
</body>
</html>