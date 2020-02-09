<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Slate Theme -->
<link href="${css}/bootstrap-slate-theme.css" rel="stylesheet">

<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="${css}/open-iconic-bootstrap.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp" %>
	
		<!-- Page Content -->
		<div class="content">
			<!-- Home Content -->
			<c:if test="${userClickHome == true}">
				<%@include file="home.jsp" %>
			</c:if>
			
			<!-- About Content -->
			<c:if test="${userClickAbout == true}">
				<%@include file="about.jsp" %>
			</c:if>
			
			<!-- Contact Content -->
			<c:if test="${userClickContact == true}">
				<%@include file="contact.jsp" %>
			</c:if>
			
			<!-- Products Content -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp" %>
			</c:if>
			
			<!-- Show Products -->
			<c:if test="${userClickShowProducts == true}">
				<%@include file="singleProduct.jsp" %>
			</c:if>
			
			<!-- Manage Products -->
			<c:if test="${userClickManageProducts == true}">
				<%@include file="manageProducts.jsp" %>
			</c:if>
		</div>
	
		<!-- Footer -->
		<%@include file="./shared/footer.jsp" %>
	
		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
		
		<!-- Jquery Validator -->
		<script src="${js}/jquery.validate.js"></script>
		
		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>
		
		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap4.js"></script>
		
		<!-- Bootbox -->
		<script src="${js}/bootbox.min.js"></script>
		
		<!-- Custom JavaScript -->
		<script src="${js}/myapp.js"></script>

	</div>
	
</body>

</html>
