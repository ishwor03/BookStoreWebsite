
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Register as a Customer" />
</jsp:include>

</head>
<body>
	<div class="container">

		<jsp:directive.include file="header.jsp" />

      <div class="row">&nbsp;</div>

		<div class="row">
			<div class="col text-center">
				<h2>Edit My Profile</h2>
			</div>
		</div>

      <div class="row">&nbsp;</div>

		<form action="update_profile" method="post" style="max-width: 640px; margin: 0 auto;">

			
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">E-mail:</label>
				  <div class="col-sm-8"><h6><b>${loggedCustomer.email}</b> (Cannot be changed)</h6>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">First Name:</label>
				<div class="col-sm-8">
					<input type="text" name="firstname" class="form-control"
						value="${loggedCustomer.firstname}" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Last Name:</label>
				<div class="col-sm-8">
					<input type="text" name="lastname" class="form-control"
						value="${loggedCustomer.lastname}" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Phone Number:</label>
				<div class="col-sm-8">
					<input type="text" name="phone" class="form-control"
						value="${loggedCustomer.phone}" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Address Line 1:</label>
				<div class="col-sm-8">
					<input type="text" name="address1" class="form-control"
						value="${loggedCustomer.addressLine1}" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Address Line 2</label>
				<div class="col-sm-8">
					<input type="text" name="address2" class="form-control"
						value="${loggedCustomer.addressLine2}" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">City</label>
				<div class="col-sm-8">
					<input type="text" name="city" class="form-control"
						value="${loggedCustomer.city}" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">State</label>
				<div class="col-sm-8">
					<input type="text" name="state" class="form-control"
						value="${loggedCustomer.state}" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Zip Code</label>
				<div class="col-sm-8">
					<input type="text" name="zipCode" class="form-control"
						value="${loggedCustomer.zipcode}" required />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Country:</label>
				<div class="col-sm-8">
					<select name="country" class="form-control" required>
						<c:forEach items="${mapCountries}" var="country">
							<option value="${country.value}"
								<c:if test='${loggedCustomer.country eq country.value}'> selected ='selected'</c:if>>${country.key}</option>
						</c:forEach>
					</select>
				</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Password:</label>
					<div class="col-sm-8">
						<input type="password" name="password" class="form-control"
							value="${customer.password}"  placeholder="Leave password field blank if you don't want to change password" required minlength="5"
							maxlength="16" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Confirm Password:</label>
					<div class="col-sm-8">
						<input type="password" name="password" class="form-control"
							value="${customer.password}" required minlength="5"
							maxlength="16" oninput="checkPasswordMatch(this)" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col text-center">
					<button type="submit" class="btn btn-primary mr-3">Save</button>
					&nbsp;&nbsp;&nbsp; <input type="button" value="Cancel"
						class="btn btn-secondary" onclick="history.go(-1);" />
				</div>
			</div>

			<jsp:directive.include file="footer.jsp" />
</body>
</html>