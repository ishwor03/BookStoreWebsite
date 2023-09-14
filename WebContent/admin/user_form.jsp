<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Create New Users" />
</jsp:include>
<head>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
	<div class="container">
		<jsp:directive.include file="header.jsp" />

		<div class="row">&nbsp;</div>

		<div align="center">
			<div class="col-sm-8">
				<div class="card">
					<div class="card-header text-white"
						style="background-color: #00AA9E;">
						<div class="text-center">
							<h2>
								<c:if test="${user != null}">
				Edit User
			</c:if>
								<c:if test="${user == null}">
				Create New User
			</c:if>
							</h2>
						</div>
					</div>

					<c:if test="${user != null}">
						<form action="update_user" method="post" id="userForm">
							<input type="hidden" name="userId" value="${user.userId}">
					</c:if>
					<c:if test="${user == null}">
						<form action="create_user" method="post" id="userForm">
					</c:if>

					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-4 col-form-label">E-mail:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="email"
									value="${user.email}" required minlength="5" maxlength="30" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-4 col-form-label">Full name:</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="fullname"
									value="${user.fullName}" required minlength="5" maxlength="45" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-4 col-form-label">Password:</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" name="password"
									value="${user.password}" required minlength="5" maxlength="15" />
							</div>
						</div>

						<div class="row">
							<div class="col text-center">
								<button type="submit" class="btn btn-primary">Save</button>
								&nbsp;
								<button type="button" class="btn btn-secondary"
									onclick="history.go(-1);">Cancel</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">&nbsp;</div>
	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript">

	$(document).ready(function() {
		$("#buttonCancel").click(function() {
			history.go(-1);
		});
	});
</script>
</html>