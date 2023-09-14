<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="My Order History" />
</jsp:include>
<body>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Evergreen Bookstore Administration</title>
	<link rel="stylesheet" href="../css/style.css" >
</head>
<body>
	<jsp:directive.include file="header.jsp" />
	
	<div>&nbsp;</div>
	
	<div align="center">
		<h1>Administrative Dashboard</h1>
	</div>
	
	<div align="center">
	  <div> 
	    <h2>Quick Actions:</h2>
	  </div>
		
		<div>
		<b>
		<a class="btn btn-primary text-white btn-sm" href="new_book" role="button">New Book</a>&nbsp;&nbsp;
		<a class="btn btn-secondary text-white btn-sm" href="user_form.jsp" role="button">New User</a> &nbsp;&nbsp;
		<a class="btn btn-info text-white btn-sm" href="category_form.jsp" role="button">New Category</a> &nbsp;&nbsp;
		<a class="btn btn-success text-white btn-sm" href="new_customer" role="button">New Customer</a>
		</b>
	</div>
	</div>
	
	<div>&nbsp;</div>
	
	<div align="center"><h2>Recent Sales:</h2>
	  </div>
	
	  <div class="container">
      <table class="table table-bordered table-striped 
           table-hover table-responsive-md">
        <thead class="thead-dark">
			<tr>
				<th>Order ID</th>
				<th>Ordered By</th>
				<th>Book Copies</th>
				<th>Total</th>
				<th>Payment Method</th>
				<th>Status</th>
				<th>Order Date</th>
			</tr>
			</thead>
	         <tbody>
			<c:forEach items="${listMostRecentSales}" var="order" varStatus="status">
			<tr>
				<td><a href="view_order?id=${order.orderId}">${order.orderId}</a></td>
				<td>${order.customer.fullname}</td>
				<td>${order.bookCopies}</td>
				<td><fmt:setLocale value="en_US"/><fmt:formatNumber value="${order.total}" type="currency" /></td>
				<td>${order.paymentMethod}</td>
				<td>${order.status}</td>
				<td>${order.orderDate}</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>

   <div align="center"><h2>Recent Reviews:</h2></div>

	 <div class="container">
      <table class="table table-bordered table-striped 
           table-hover table-responsive-md">
        <thead class="thead-dark">
			<tr>
				<th>Book</th>
				<th>Rating</th>
				<th>Headline</th>
				<th>Customer</th>
				<th>Review On</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${listMostRecentReviews}" var="review">
			<tr>
				<td>${review.book.title}</td>
				<td>${review.rating}</td>
				<td><a href="edit_review?id=${review.reviewId}">${review.headline}</a></td>
				<td>${review.customer.fullname}</td>
				<td>${review.reviewTime}</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
		<div>&nbsp;</div>
		
	<div class="container">
	  <div class="card text-center p-2">
		    <h2>Statistics:</h2>
		<b>
		 Total Users: ${totalUsers} &nbsp;&nbsp;
	     Total Books: ${totalBooks} &nbsp;&nbsp;
		 Total Customers: ${totalCustomers} &nbsp;&nbsp;
		 Total Reviews: ${totalReviews} &nbsp;&nbsp;
		 Total Orders: ${totalOrders}
		</b>
		</div>
		</div>
		
		<div class="row">&nbsp;</div>
		
	<jsp:directive.include file="footer.jsp" />
</body>
</html>