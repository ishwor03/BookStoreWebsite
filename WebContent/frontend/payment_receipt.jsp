<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Payment Receipt - Online Book Store" />
</jsp:include>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />
	
	<div class="row">&nbsp;</div>
	
	<div align="center">
	   <h2>You have made payment successfully. Thank you for purchasing!</h2>
	   <jsp:directive.include file="receipt.jsp" />
	   <div>
	      <br/>
	      <input type="button"  class="btn btn-primary" value="Print Receipt" onclick="javascript:showPrintReceiptPopup();"/>
	   </div>
	</div>
	 <jsp:directive.include file="footer.jsp"/>
</div>	 
	<script>
		function showPrintReceiptPopup() {
			var width = 600;
			var height = 250;
			var left= (screen.width - width) / 2;
			var right = (screen.width - width) /2;

			window.open('frontend/print_receipt.jsp','_blank',
					'width=' + width + ',height=' + height +
					', top=' + top + ', left=' + left);
		}
	</script>
</body>
</html>