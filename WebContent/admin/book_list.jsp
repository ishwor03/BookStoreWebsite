<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Manage Books - Evergreen Bookstore Administration" />
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
		<h2>Books Management</h2>
		<h4><a href="new_book">Create New Book</a></h4>
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
				<th>Image</th>
				<th>Title</th>
				<th>Author</th>
				<th>Category</th>
				<th>Price</th>
				<th>Last Updated</th>
				<th>Actions</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="book" items="${listBooks}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${book.bookId}</td>
				
				<td>
					<img src="data:image/jpg;base64,${book.base64Image}" width="84" height="110"  class="img-fluid"/>
				</td>
				
				<td>${book.title}</td>
				<td>${book.author}</td>
				<td>${book.category.name}</td>
				<td>$${book.price}</td>
				<td><fmt:formatDate pattern='MM/dd/yyyy' value='${book.lastUpdateTime}' /></td>
				<td>
					<a class="fas fa-edit fa-2x" href="edit_book?id=${book.bookId}"></a> 
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a  href="javascript:void(0);" class="deleteLink" id="${book.bookId}"><i class="fas fa-trash fa-2x"></i></a>
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
					bookId = $(this).attr("id");
					if (confirm('Are you sure you want to delete the book with ID ' +  bookId + '?')) {
						window.location = 'delete_book?id=' + bookId;
					}					
				});
			});
		});
	</script>
</body>
</html>