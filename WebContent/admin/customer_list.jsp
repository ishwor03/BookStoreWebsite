<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Manage Customers - Evergreen Bookstore Administration" />
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
		<h2>Customers Management</h2>
		<h4><a href="new_customer">Create New Customer</a></h4>
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
				<th>E-mail</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>City</th>
				<th>Country</th>
				<th>Registered Date</th>
				<th>Actions</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="customer" items="${listCustomer}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${customer.customerId}</td>
				<td>${customer.email}</td>
				<td>${customer.firstname}</td>
				<td>${customer.lastname}</td>
				<td>${customer.city}</td>
				<td>${customer.countryName}</td>
				<td>${customer.registerDate}</td>
				<td>
					<a class="fas fa-edit fa-2x" href="edit_customer?id=${customer.customerId}"></a> 
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a  href="javascript:void(0);" class="deleteLink" id="${customer.customerId}"><i class="fas fa-trash fa-2x" ></i></a>
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
					customerId = $(this).attr("id");
					if (confirm('Are you sure you want to delete the customer with ID ' +  customerId + '?')) {
						window.location = 'delete_customer?id=' + customerId;
					}					
				});
			});
		});
	</script>
</body>
</html>