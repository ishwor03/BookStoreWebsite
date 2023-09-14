<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Create New Category" />
</jsp:include>
<link rel="stylesheet" href="../css/style.css">
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
								<c:if test="${category != null}">
				Edit Category
			</c:if>
								<c:if test="${category == null}">
				Create New Category
			</c:if>
							</h2>
						</div>
					</div>

					<div align="center">
						<c:if test="${category != null}">
							<form action="update_category" method="post">
								<input type="hidden" name="categoryId"
									value="${category.categoryId}">
						</c:if>
						<c:if test="${category == null}">
							<form action="create_category" method="post">
						</c:if>

						<div class="card-body">
							<div class="form-group row">
								<label class="col-sm-4 col-form-label">Name:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" name="name"
										value="${category.name}" required minlength="3" maxlength="20" />
								</div>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Save</button>
								&nbsp;&nbsp;&nbsp;
								<button type="button" class="btn btn-secondary"
									onclick="history.go(-1);">Cancel</button>
							</div>
						</div>
					</div>
				</div>
				<div>&nbsp;</div>
</div>
</div>
				<jsp:directive.include file="footer.jsp" />
</body>

</html>