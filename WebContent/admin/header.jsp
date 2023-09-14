<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div align="center">
	<div>
	
	
		<a href="${pageContext.request.contextPath}/admin/">
	     <img src="../images/BookstoreAdminLogo.png"  class="img-fluid" />
		<!-- <img src="../images/BookStoreAdmin_logo.png" style="width:35em; height:15em;" />-->
		</a>
	</div>
	
	<div>
		Welcome, <c:out value="${sessionScope.useremail}" /> | <a href="logout">Logout</a>
		<br/><br/>
	</div>
	<div id="headermenu">
		<div>
			<a href="list_users">
				<img src="../images/users.png" class="img-fluid"/><br/>Users
			</a>
		</div>
		<div>
			<a href="list_category">
				<img src="../images/category.png" class="img-fluid" /><br/>Categories
			</a>
		</div>
		<div>
			<a href="list_books">
				<img src="../images/bookstack.png" class="img-fluid"/><br/>Books
			</a>
		</div>
		<div>
			<a href="list_customer">
				<img src="../images/customer.png" class="img-fluid"/><br/>Customers
			</a>
		</div>
		<div>
			<a href="list_review">
				<img src="../images/review.png" class="img-fluid"/><br/>Reviews
			</a>
		</div>
		<div>
			<a href="list_order"><img src="../images/order.png" class="img-fluid"/><br/>
				Orders
			</a>
		</div>
	</div>
</div>