	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="page_head.jsp">
	<jsp:param name="pageTitle" value="Evergreen Books - Online Books Store" />
</jsp:include>
<body>
<body>
<div class="container">
	<jsp:directive.include file="header.jsp" />
	
	<div class="row">&nbsp;</div>
	
	<div class="row">
	  	<div class="col text-center"><h2>${message}</h2></div>
	</div>
		
	<jsp:directive.include file="footer.jsp" />
</div>
</body>
</html>