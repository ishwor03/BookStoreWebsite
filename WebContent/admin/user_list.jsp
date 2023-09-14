<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<head>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Manage Users - Evergreen Bookstore Administration" />
</jsp:include>
<head>
  <link rel="stylesheet" href="../css/style.css" >
  <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="../js/jquery.validate.min.js"></script>
</head>
<body>
	<div class="container">
	<jsp:directive.include file="header.jsp" />
	
	<div class="row">&nbsp;</div>
	<div class="row">
	   <div class="col text-center">
		<h2>Users Management</h2>
		<h4><a href="user_form.jsp">Create New User</a></h4>
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
				<th>Email</th>
				<th>Full Name</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="user" items="${listUsers}" varStatus="status">
				<tr>
					<td>${status.index +1}</td>
					<td>${user.userId}</td>
					<td>${user.email}</td>
					<td>${user.fullName}</td>
					<td>
					<a class="fas fa-edit fa-2x" href="edit_user?id=${user.userId}"></a>
					&nbsp;&nbsp;&nbsp;&nbsp; 
					<a href="javascript:void(0);" class="deleteLink" id="${ user.userId}"><i class="fas fa-trash fa-2x"></i></a>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
	<jsp:directive.include file="footer.jsp" />

	<script>
	$(document).ready(function(){
		$(".deleteLink").each(function(){
			$(this).on("click",function(){
				userId = $(this).attr("id");
				if(confirm('Are you sure you want to delete the user with ID ' + userId + '?')){
		    		  window.location='delete_user?id=' + userId;
				}
			});
			
		});
	});
    </script>

 

</body>
</html>