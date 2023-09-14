<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Manage Reviews - Evergreen Bookstore Administration" />
</jsp:include>
<head>
	<link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />
	
	<div class="row">&nbsp;</div>
	<div class="row">
	   <div class="col text-center">
		<h2 class="pageheading">Review Management</h2>		
	</div>
	</div>
	
	<c:if test="${message != null}">
	<div align="center">
		<h4 class="message">${message}</h4>
	</div>
	</c:if>
	
	<div align="center">
		<table class="table table-bordered table-striped table-hover table-responsive-sm">
		  <thead class="thead-dark">
			<tr>
				<th>Index</th>
				<th>ID</th>
				<th>Book</th>
				<th>Rating</th>
				<th>Headline</th>
				<th>Customer</th>
				<th>Review On</th>
				<th>Actions</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="review" items="${listReviews}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${review.reviewId}</td>
				<td>${review.book.title}</td>
				<td>${review.rating}</td>
				<td>${review.headline}</td>
				<td>${review.customer.fullname}</td>
				<td>${review.reviewTime}</td>
				<td>
					<a class="fas fa-edit fa-2x" href="edit_review?id=${review.reviewId}"></a> 
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a  href="javascript:void(0);" class="deleteLink" id="${review.reviewId}"><i class="fas fa-trash fa-2x"></i></a>
				</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	<jsp:directive.include file="footer.jsp" />
	
	<script>
		$(document).ready(function() {
			$(".deleteLink").each(function() {
				$(this).on("click", function() {
					reviewId = $(this).attr("id");
					if (confirm('Are you sure you want to delete the review with ID ' +  reviewId + '?')) {
						window.location = 'delete_review?id=' + reviewId;
					}					
				});
			});
		});	
	</script>
</body>
</html>