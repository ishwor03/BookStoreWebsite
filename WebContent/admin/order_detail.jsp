<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Order Details - Evergreen Bookstore Administration" />
</jsp:include>
<head>
	<link rel="stylesheet" href="../css/style.css" >	
</head>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />
	
	<div>&nbsp;</div>
	
	<div align="center">
		<h2 class="pageheading">Details of Order ID: ${order.orderId}</h2>		
	</div>
	
	<c:if test="${message != null}">
	<div align="center">
		<h4 class="message">${message}</h4>
	</div>
	</c:if>
	
	<jsp:directive.include file="../common/common_order_detail.jsp" />
	
	<div align="center">
		<br/>
		<a class="btn btn-primary text-white btn-lg" href="edit_order?id=${order.orderId}" role="button">Edit Order</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="btn btn-secondary text-white btn-lg" href="" role="button">Delete  Order</a>
	</div>
	
	<div>&nbsp;</div>
	<jsp:directive.include file="footer.jsp" />
	</div>
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