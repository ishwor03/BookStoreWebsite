	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Customer Profile - Online Books Store" />
</jsp:include>

</head>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />
	
	<div>&nbsp;</div>
	<div class="row">
	  <div class="col text-center">
	    <h2>Welcome, ${loggedCustomer.fullname}</h2>
	  </div>
	</div>
	<div>&nbsp;</div>
		<div class="row">
				<label class="col text-center">E-mail Address:</label>
				<div class="col">${loggedCustomer.email}</div>
		</div>
		<div class="row">
				<label class="col text-center">First Name:</label>
				<div class="col">${loggedCustomer.firstname}</div>
		</div>
		<div class="row">
				<label class="col  text-center">Last Name:</label>
				<div class="col">${loggedCustomer.lastname}</div>
		</div>
		<div class="row">
				<label class="col  text-center">Phone Number:</label>
				<div class="col">${loggedCustomer.phone}</div>
		</div>
		<div class="row">
				<label class="col text-center">Address Line 1:</label>
				<div class="col">${loggedCustomer.addressLine1}</div>
		</div>
		<div class="row">
				<label class="col text-center">Address Line 2:</label>
				<div class="col">${loggedCustomer.addressLine2}</div>
		</div>
		<div class="row">
				<label class="col text-center">City:</label>
				<div class="col">${loggedCustomer.city}</div>
		</div>
		<div class="row">
				<label class="col text-center">State:</label>
				<div class="col">${loggedCustomer.state}</div>
		</div>
		<div class="row">
				<label class="col text-center">Zip Code:</label>
				<div class="col">${loggedCustomer.zipcode}</div>
		</div>
		<div class="row">
				<label class="col text-center">Country:</label>
				<div class="col">${loggedCustomer.countryName}</div>
		</div>
		
		<div>&nbsp;</div>
			<div class="row">
	          <div class="col text-center">
	             <h2><a href="edit_profile">Edit My Profile</a></h2>
	         </div>
	    </div>
	<jsp:directive.include file="footer.jsp" />
</div>
</body>
</html>