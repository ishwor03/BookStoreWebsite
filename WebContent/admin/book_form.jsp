<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Create New Book" />
</jsp:include>
<head>
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
			<h2>
			<c:if test="${book != null}">
				Edit Book
			</c:if>
			<c:if test="${book == null}">
				Create New Book
			</c:if>
		</h2>
	</div>
	</div>
	
			
		<c:if test="${book != null}">
			<form action="update_book" method="post" id="bookForm" enctype="multipart/form-data">
			<input type="hidden" name="bookId" value="${book.bookId}">
		</c:if>
		<c:if test="${book == null}">
			<form action="create_book" method="post" id="bookForm" enctype="multipart/form-data">
		</c:if>
		
		
		
		<div class="card-body">
				<div class="form-group row">
		  	<label for="type" class="col-sm-4 col-form-label">Category:</label>
		  	<div class="col-sm-6">
						<select name="category" class="form-control">
						<option>
						<c:forEach items="${listCategory}" var="category">
							<c:if test="${category.categoryId eq book.category.categoryId}">
								<option value="${category.categoryId}" selected>
							</c:if>
							<c:if test="${category.categoryId ne book.category.categoryId}">
								<option value="${category.categoryId}">
							</c:if>							
								${category.name}
							</option>
						</c:forEach>
					</select>
					</div>
				</div>
				
					<div class="form-group row">
					  <label class="col-sm-4 col-form-label">Title:</label>
					<div class="col-sm-6">
				       <input type="text"  class="form-control" id="title" name="title"  value="${book.title}" required/>
				    </div>
				    </div>
				
				<div class="form-group row">
					  <label class="col-sm-4 col-form-label">Author:</label>
					<div class="col-sm-6">
				       <input type="text"  class="form-control" id="title" name="title"  value="${book.author}" required/>
				    </div>
				    </div>
				    
				    <div class="form-group row">
					  <label class="col-sm-4 col-form-label">ISBN:</label>
					<div class="col-sm-6">
				       <input type="text"  class="form-control" id="title" name="title"  value="${book.isbn}" required/>
				    </div>
				    </div>
				    <div class="form-group row">
					  <label class="col-sm-4 col-form-label">Publish Date:</label>
					<div class="col-sm-6">
				       <input type="date"  class="form-control" id="publishDate" name="publishDate"  required
					value="<fmt:formatDate pattern='yyyy-MM-dd' value='${book.publishDate}' />" />
				    </div>
				    </div>
				    
				     <div class="form-group row">
					  <label class="col-sm-4 col-form-label">Book Image:</label>
					<div class="col-sm-6">
					<c:if test="${book == null}">
					<input type="file" class ="form-control" id="bookImage" name="bookImage" size="20" required/><br/>
				</c:if>
				
				<c:if test="${book != null}">
					<input type="file" class ="form-control" id="bookImage" name="bookImage" size="20"/><br/>
				</c:if>
				
					<img id="thumbnail" alt="Image Preview" style="width:20%; margin-top: 10px"
						src="data:image/jpg;base64,${book.base64Image}"/>
						</div>
						</div>
				
				  <div class="form-group row">
					  <label class="col-sm-4 col-form-label">Price:</label>
					<div class="col-sm-6">
					<input type="text"  class="form-control" id="price" name="price" value="${book.price}" required/>
					</div>
					</div>
					
					<div class="form-group row">
					  <label class="col-sm-4 col-form-label">Description:</label>
					<div class="col-sm-8">
					 <textarea class="form-control"  name="description" id="description" required>${book.description}</textarea>
					 </div>
					 </div>
						
				    <div class="text-center">								
					<button type="submit" class="btn btn-primary">Save</button>&nbsp;&nbsp;&nbsp;
					<button id="buttonCancel" class="btn btn-secondary">Cancel</button>
				</div>	
			</div>		
	</div>
</div>
</div>	

</div>
	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript">

	$(document).ready(function() {
		$('#description').richText();
		
		$('#bookImage').change(function() {
			showImageThumbnail(this);
		});
		
		$("#buttonCancel").click(function() {
			history.go(-1);
		});
	});
	
	function showImageThumbnail(fileInput) {
		var file = fileInput.files[0];
		
		var reader = new FileReader();
		
		reader.onload = function(e) {
			$('#thumbnail').attr('src', e.target.result);
		};
		
		reader.readAsDataURL(file);
	}
</script>
</html>