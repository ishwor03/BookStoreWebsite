<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Create New Customer" />
</jsp:include>

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
			<c:if test="${customer != null}">
				Edit Customer
			</c:if>
			<c:if test="${customer == null}">
				Create New Customer
			</c:if>
		</h2>
			</div>
					</div>
	
	<div align="center">
		<c:if test="${customer != null}">
			<form action="update_customer" method="post" id="customerForm">
			<input type="hidden" name="customerId" value="${customer.customerId}">
		</c:if>
		<c:if test="${customer == null}">
			<form action="create_customer" method="post" id="customerForm">
		</c:if>
		
		<div class="card-body">
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">E-mail:</label>
				<div class="col-sm-6"><input type="text"  name="email" class ="form-control" value="${customer.email}" required minlength="5" maxlength="64"/></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">First Name:</label>
				<div class="col-sm-6"><input type="text" name="firstname" class ="form-control" value="${customer.firstname}" required minlength="2" maxlength="30"/></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Last Name:</label>
				<div class="col-sm-6"><input type="text"  name="lastname" class ="form-control" value="${customer.lastname}" required minlength="2" maxlength="30"/></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Password:</label>
				<div class="col-sm-6">
				<input type="password"  name="password" class ="form-control" 
				value="${customer.password}" required minlength="5" maxlength="16"/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Confirm Password:</label>
				<div class="col-sm-6">
				<input type="password"  name="password" class ="form-control" 
				value="${customer.password}" required minlength="5" maxlength="16"
				oninput="checkPasswordMatch(this)"/>
				</div>
			</div>			
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Phone Number:</label>
				<div class="col-sm-6"><input type="text"  name="phone" class ="form-control" value="${customer.phone}" required minlength="9" maxlength="15"/></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Address Line 1:</label>
				<div class="col-sm-6"><input type="text"  name="address1" class ="form-control" value="${customer.addressLine1}" required minlength="10" maxlength="128" /></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Address Line 2:</label>
				<div class="col-sm-6"><input type="text"  name="address2" class ="form-control" value="${customer.addressLine2}" required maxlength="128"/></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">City:</label>
				<div class="col-sm-6"><input type="text"  name="city" class ="form-control" value="${customer.city}" required minlength="2" maxlength="32" /></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">State:</label>
				<div class="col-sm-6"><input type="text"  name="state" class ="form-control" value="${customer.state}" required minlength="2" maxlength="45" /></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Zip Code:</label>
				<div class="col-sm-6"><input type="text" name="zipCode" class ="form-control" value="${customer.zipcode}" required/></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-4 col-form-label">Country:</label>
				<div class="col-sm-6">
				  <select name="country" required class="form-control">
				  <c:forEach items="${mapCountries}" var="country">
				    <option value="${country.value}" <c:if test='${customer.country eq country.value}'> selected ='selected'</c:if> >${country.key}</option>
				  </c:forEach>
				  </select>
				  
				 </div> 
			</div>																
			
			<div class="row">
				<div class="col text-center">
					<button type="submit" class="btn btn-primary mr-3">Save</button>
					<button type="button" class="btn btn-secondary" onclick="history.go(-1);">Cancel</button>
			</div>				
		</div>
		</div>
	</div>
</div>
</div>
</div>
<div class="row">&nbsp;</div>
</div>
	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript" src="../js/customer-form.js"></script>
</html>