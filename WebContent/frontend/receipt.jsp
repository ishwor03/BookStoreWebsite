   <div class="row">&nbsp;</div>
   
<div class="row">
	<div class="col text-center">
		<h3>Your Payment Receipt</h3>
	</div>
</div>

<div class="card">
	<div class="card-header">
		<div class="text-center">
			<div class="text-center">
				<h3>Seller Information:</h3>
			</div>
		</div>
	</div>

   <div class="row">&nbsp;</div>

	<div class="card-body">
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">E-mail:</label>
			<div class="col-sm-8">sales@evergreenbooks.com</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">E-Phone:</label>
			<div class="col-sm-8">+ 1 234 567 89</div>
		</div>
	</div>
</div>

<div class="row">&nbsp;</div>

<div class="card">
	<div class="card-header">
		<div class="text-center">
			<div class="text-center">
				<h3>Buyer Information:</h3>
			</div>
		</div>
	</div>

	<div class="card-body">
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">First Name:</label>
			<div class="col-sm-8">${payer.firstName }</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">last Name:</label>
			<div class="col-sm-8">${payer.lastName }</div>
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
				<h3>Order Details:</h3>
			</div>
		</div>
	</div>

	<div class="card-body">
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">Order ID:</label>
			<div class="col-sm-8">${orderId}</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">Ordered by:</label>
			<div class="col-sm-8">${loggedCustomer.fullname}</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">Transaction
				Description:</label>
			<div class="col-sm-8">${transaction.description}</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">Items:</label>
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
