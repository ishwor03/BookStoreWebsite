<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Edit Order - Evergreen Bookstore Administration" />
</jsp:include>
</head>
<link rel="stylesheet" href="../css/style.css">
<body>
	<jsp:directive.include file="header.jsp" />
	
	<div align="center">
		<h2 class="pageheading">Edit Order ID: ${order.orderId}</h2>		
	</div>
	
	<c:if test="${message != null}">
	<div align="center">
		<h4 class="message">${message}</h4>
	</div>
	</c:if>
	
	<form action="update_order" method="post">
	<div align="center">
	
	<div class="col-sm-8">
		<div class="card">
			<div class="card-header text-white" style="background-color: #00AA9E;">
				<div class="text-center">
					<h3>Order Overview:</h3>
				</div>
			</div>
			
			<div class="card-body ">
					<div class="form-group row">
					<label class="col-sm-4 col-form-label">Ordered By:</label>
					<div class="col-sm-6">
						<input class="form-control" value="${order.customer.fullname}" readonly="readonly" />
					</div>
				</div>

					<div class="form-group row">
					<label class="col-sm-4 col-form-label">Ordered By:</label>
					<div class="col-sm-6">
						<input class="form-control" value="${order.orderDate}" readonly="readonly" />
					</div>
				</div>
				
					
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Payment Method:</label>
					<div class="col-sm-6">
                     <select name="paymentMethod" class="form-control">
						<option value="Cash On Delivery" <c:if test="${order.paymentMethod eq 'Cash On Delivery'}">selected='selected'</c:if>> Cash On Delivery</option>
						<option value="paypal"<c:if test="${order.paymentMethod eq 'paypal'}">selected='selected'</c:if>>PayPal or Credit card</option>
					</select>
                  </div>
				</div>
				
				<div class="row">&nbsp;</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Order Status: </label>
					<div class="col-sm-6">
                   <select name="orderStatus" class="form-control">
						<option value="Processing" <c:if test="${order.status eq 'Processing' }">selected='selected'</c:if> >Processing</option>
						<option value="Shipping" <c:if test="${order.status eq 'Shipping' }">selected='selected'</c:if>>Shipping</option>
						<option value="Delivered" <c:if test="${order.status eq 'Delivered' }">selected='selected'</c:if>>Delivered</option>
						<option value="Completed" <c:if test="${order.status eq 'Completed' }">selected='selected'</c:if>>Completed</option>
						<option value="Cancelled" <c:if test="${order.status eq 'Cancelled' }">selected='selected'</c:if>>Cancelled</option>
					</select>
                  </div>
				</div>
			</div>
		</div>	
</div>			
		
		<div class="row">&nbsp;</div>
		
		<div class="col-sm-8">
		<div class="card">
			<div class="card-header text-white" style="background-color: #00AA9E;">
				<div class="text-center">
					<h3>Recipient Information:</h3>
				</div>
			</div>
			
				<div class="card-body">
					<div class="form-group row">
					<label class="col-sm-4 col-form-label">First Name:</label>
					<div class="col-sm-6">
						 <input type="text" name="firstname"  value="${order.firstname}" class="form-control" required minlength ="3" maxlength ="30"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Last Name:</label>
					<div class="col-sm-6">
						  <input type="text" name="lastname"  value="${order.lastname}" class="form-control" required minlength ="3" maxlength ="30"/>
					</div>
				</div>
				
					<div class="form-group row">
					<label class="col-sm-4 col-form-label">Phone:</label>
					<div class="col-sm-6">
						   <input type="text" name="phone"  value="${order.phone}" class="form-control" required minlength ="9" maxlength ="15"/>
					</div>
				</div>
				
					<div class="form-group row">
					<label class="col-sm-4 col-form-label">Address Line 1:</label>
					<div class="col-sm-6">
						  <input type="text" name="address1"  value="${order.addressLine1}" class="form-control" required minlength ="10" maxlength ="256" />
					</div>
				</div>
				
					<div class="form-group row">
					<label class="col-sm-4 col-form-label">Address Line 2:</label>
					<div class="col-sm-6">
						  <input type="text" name="address2"  value="${order.addressLine2}" class="form-control" minlength ="10" maxlength ="256" />
					</div>
				</div>
				
					<div class="form-group row">
					<label class="col-sm-4 col-form-label">City:</label>
					<div class="col-sm-6">
						  <input type="text" name="city"  value="${order.city}" class="form-control" required minlength ="3" maxlength ="32"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">State:</label>
					<div class="col-sm-6">
						<input type="text" name="state" value="${order.state}" class="form-control" required minlength ="3" maxlength ="45"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Zipcode:</label>
					<div class="col-sm-6">
						<input type="text" name="zipcode"  value="${order.zipcode}" class="form-control"  required minlength ="3" maxlength ="24"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Country:</label>
					<div class="col-sm-6">
						 <select name="country" class="form-control" required>
				     <c:forEach items="${mapCountries}" var="country">
				    <option value="${country.value}" <c:if test='${order.country eq country.value}'> selected ='selected'</c:if> >${country.key}</option>
				  </c:forEach>
				  </select>
					</div>
				</div>
				
			</div>
			</div>
	</div>
	
	<div class="row">&nbsp;</div>
		
	<div class="row">
	   <div class="col text-center">
					<h3>Ordered Books</h3>
				</div>
			</div>
			
			  <div class="container">
      <table class="table table-bordered table-striped 
           table-hover table-responsive-md">
        <thead class="thead-dark">
			<tr>
				<th>Index</th>
				<th>Book Title</th>
				<th>Author</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Subtotal</th>
				<th></th>
			</tr>
			</thead>
			 <tbody>
	 <tbody>
			<c:forEach items="${order.orderDetails}" var="orderDetail" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${orderDetail.book.title}</td>
				<td>${orderDetail.book.author}</td>
				<td>
					<input type="hidden" name="price" value="${orderDetail.book.price}" />
					<fmt:setLocale value="en_US"/><fmt:formatNumber value="${orderDetail.book.price}" type="currency" />
				</td>
				<td>
					<input type="hidden" name="bookId" value="${orderDetail.book.bookId}" />
					<input type="number" class="form-control" name="quantity${status.index + 1}" value="${orderDetail.quantity}" size="5" step="1" min="1" required/>
				</td>
				
				<td><fmt:setLocale value="en_US"/><fmt:formatNumber value="${orderDetail.subtotal}" type="currency" /></td>
				<td><a href="remove_book_from_order?id=${orderDetail.book.bookId}">Remove</a></td>
			</tr>
			</c:forEach>
			
			<tr>
				<td colspan="7" align="right">
				<p>Subtotal:<fmt:setLocale value="en_US"/><fmt:formatNumber value="${order.subtotal}" type="currency" /></p>
				<p>Tax:<input type="number" size="5" name="tax"  value="${order.tax}" required step="0.1" min="0.0"/></p>
				<p>Shipping Fee:<input type="number" size="5" name="shippingFee"  value="${order.shippingFee}" required step="0.1" min="0.0"/></p>
				<p>TOTAL:<fmt:setLocale value="en_US"/><fmt:formatNumber value="${order.total}" type="currency" /></p>
				</td>
			</tr>
		</table>
		</div>
		</div>
			
				
				

	
	<div align="center">
		<br/>		
		<a class="btn btn-success text-white btn-sm" href="javascript:showAddBookPopup()" role="button"><b>Add Books</b></a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="submit" class="btn btn-primary">Save</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-secondary" value="Cancel" onclick="javascript:window.location.href='list_order';">Cancel</button>		
	</div>
	</form>
	<div>&nbsp;</div>
	
	<jsp:directive.include file="footer.jsp" />
	
	<script>
		function showAddBookPopup() {
			var width = 600;
			var height = 250;
			var left = (screen.width - width) / 2;
			var top = (screen.height - height) / 2;
			
			window.open('add_book_form', '_blank', 
					'width=' + width + ', height=' + height + ', top=' + top + ', left=' + left);
		}	
		
	</script>
</body>
</html>