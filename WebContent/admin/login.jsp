<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Admin Login" />
</jsp:include>
<body>
	<div class="container">
		 <div class="col text-center">
	     <img src="../images/BookstoreAdminLogo.png" class="img-fluid" />
		<!-- <img src="../images/BookStoreAdmin_logo.png" style="width:35em; height:15em;" />-->
	</div>
		</div>
<div class="row">&nbsp;</div>
        <div class="text-center">
          <h1>Admin Login</h1>
        </div>
		
		<div class="row">&nbsp;</div>
		<c:if test="${message != null}">
			<div align="center">
				<h4 class="message">${message}</h4>
			</div>
		</c:if>
		
	<form action="login" method="post"
style="max-width:400px; margin:0 auto;">
			<div class="border border-secondary rounded p-3">
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Email:</label>
					<div class="col-sm-8">
						 <input type="email" name="email" class="form-control" placeholder="E-mail" required
							minlength="5" maxlength="64">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Password:</label>
					<div class="col-sm-8">
						  <input type="password" name="password" class="form-control" placeholder="Password" required
						   minlength="5" maxlength="16">
					</div>
				</div>
				
				<div class="row">
					<div class="col text-center">
						   <input type="submit" value="Login" class="btn btn-primary" />
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>