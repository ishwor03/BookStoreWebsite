<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Manage Categories - Evergreen Bookstore Administration" />
</jsp:include>
<head>
	<link rel="stylesheet" href="../css/style.css" >
</head>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />
	
		<div class="row">&nbsp;</div>
	
	<div class="row">
	   <div class="col text-center">
		<h2>Category Management</h2>
		<h4><a href="category_form.jsp">Create New Category</a></h4>
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
				<th>Name</th>
				<th>Actions</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="cat" items="${listCategory}" varStatus="status">
			
			<tr>
				<td>${status.index + 1}</td>
				<td>${cat.categoryId}</td>
				<td>${cat.name}</td>
				<td>
					<a class="fas fa-edit fa-2x" href="edit_category?id=${cat.categoryId}"></a> &nbsp;
					<a  href="javascript:void(0);" class="deleteLink" id="${cat.categoryId}"><i class="fas fa-trash fa-2x"></i></a>
				</td>
			</tr>
		
			</c:forEach>
				</tbody>
		</table>
	</div>
	
	
	<jsp:directive.include file="footer.jsp" />
</div>	
	<script>
		$(document).ready(function() {
			$(".deleteLink").each(function() {
				$(this).on("click", function() {
					categoryId = $(this).attr("id");
					if (confirm('Are you sure you want to delete the category with ID ' +  categoryId + '?')) {
						window.location = 'delete_category?id=' + categoryId;
					}					
				});
			});
		});	
	</script>
</body>
</html>