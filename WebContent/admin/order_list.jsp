<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Manage Orders - Evergreen Bookstore Administration" />
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
		<h2>Book Orders Management</h2>		
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
				<th>Order ID</th>
				<th>Ordered by</th>
				<th>Book Copies</th>
				<th>Total</th>
				<th>Payment method</th>
				<th>Status</th>
				<th>Order Date</th>
				<th>Actions</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="order" items="${listOrder}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${order.orderId}</td>
				<td>${order.customer.fullname}</td>
				<td>${order.bookCopies}</td>
				<td><fmt:setLocale value="en_US"/><fmt:formatNumber value="${order.total}" type="currency" /></td>
				
				<td>${order.paymentMethod}</td>
				<td>${order.status}</td>
				<td>${order.orderDate}</td>
				<td>
					<a class="fas fa-file-alt fa-2x" href="view_order?id=${order.orderId}"></a>
					&nbsp;&nbsp;
					<a class="fas fa-edit fa-2x" href="edit_order?id=${order.orderId}"></a>
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a  href="javascript:void(0);" class="deleteLink" id="${order.orderId}"><i class="fas fa-trash fa-2x"></i></a>
				</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	</div>
	<jsp:directive.include file="footer.jsp" />
	
	<script>
		$(document).ready(function() {
			$(".deleteLink").each(function() {
				$(this).on("click", function() {
					orderId = $(this).attr("id");
					if (confirm('Are you sure you want to delete the order with ID ' +  orderId + '?')) {
						window.location = 'delete_order?id=' + orderId;
					}					
				});
			});
		});	
	</script>
</body>
</html>