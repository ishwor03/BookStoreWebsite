<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Review Payment - Online Book Store" />
</jsp:include>
<body>
	<div class="container">
		<jsp:directive.include file="header.jsp" />

		<div class="row">&nbsp;</div>

		<div class="row">
			<div class="col text-center">
				<h4>
					<i>Please carefully review the following information before
						making payment.</i>
				</h4>
			</div>
		</div>

      <div class="row">&nbsp;</div>
      
		<div class="card">
			<div class="card-header">
				<div class="text-center">
					<div class="text-center">
						<h3>Payer Information</h3>
					</div>
				</div>
			</div>
			<div class="card-body">
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">First Name:</label>
					<div class="col-sm-8">${payer.firstName}</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Last Name:</label>
					<div class="col-sm-8">${payer.lastName}</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">E-mail:</label>
					<div class="col-sm-8">${payer.email}</div>
				</div>
			</div>
		</div>

		<div class="row">&nbsp;</div>

		<div class="card">
			<div class="card-header">
				<div class="text-center">
					<div class="text-center">
						<h3>Recipient Information</h3>
					</div>
				</div>
			</div>

			<div class="card-body">
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Recipient Name:</label>
					<div class="col-sm-8">${recipient.recipientName}</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Address Line 1:</label>
					<div class="col-sm-8">${recipient.line1}</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Address Line2:</label>
					<div class="col-sm-8">${recipient.line2}</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">City:</label>
					<div class="col-sm-8">${recipient.city}</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">State:</label>
					<div class="col-sm-8">${recipient.state}</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Country Code:</label>
					<div class="col-sm-8">${recipient.countryCode}</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Postal Code:</label>
					<div class="col-sm-8">${recipient.postalCode}</div>
				</div>

			</div>
		</div>

		<div class="row">&nbsp;</div>

		<div class="card">
			<div class="card-header">
				<div class="text-center">
					<div class="text-center">
						<h3>Transaction Details:</h3>
					</div>
				</div>
			</div>

			<div class="card-body">
				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Description:</label>
					<div class="col-sm-8">${transaction.description}</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-4 col-form-label">Item List:</label>
				</div>

				<div align="center">
					<table
						class="table table-bordered table-striped table-hover table-responsive-sm">
						<thead class="thead-dark">
							<tr>
								<th>No.</th>
								<th>Name</th>
								<th>Quantity</th>
								<th>Price</th>
								<th>Subtotal</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${transaction.itemList.items }" var="item"
								varStatus="var">
								<tr>
									<td>${var.index + 1 }</td>
									<td>${item.name }</td>
									<td>${item.quantity }</td>
									<td><fmt:setLocale value="en_US" />
										<fmt:formatNumber value="${item.price }" type="currency" /></td>
									<td><fmt:setLocale value="en_US" />
										<fmt:formatNumber value="${item.price * item.quantity }"
											type="currency" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="row">
						<div class="col text-center">
							<p>
								Subtotal:
								<fmt:setLocale value="en_US" />
								<fmt:formatNumber value="${transaction.amount.details.subtotal}"
									type="currency" />
							</p>
							<p>
								Tax:
								<fmt:setLocale value="en_US" />
								<fmt:formatNumber value="${transaction.amount.details.tax}"
									type="currency" />
							</p>
							<p>
								Shipping Fee:
								<fmt:setLocale value="en_US" />
								<fmt:formatNumber value="${transaction.amount.details.shipping}"
									type="currency" />
							<p>
								<b>TOTAL:
								<fmt:setLocale value="en_US" />
								<fmt:formatNumber value="${transaction.amount.total}"
									type="currency" /></b>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">&nbsp;</div>

		<div class="row">
			<div class="col text-center">
				<form action="execute_payment" method="post">
					<input type="hidden" name="paymentId" value="${param.paymentId }" />
					<input type="hidden" name="PayerID" value="${param.PayerID}" /> <input
						type="submit" class="btn btn-primary" value="Pay Now" />
				</form>
			</div>
		</div>
		<jsp:directive.include file="footer.jsp" />
	</div>
</body>
</html>