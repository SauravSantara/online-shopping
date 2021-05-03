<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Error Page">
<meta name="author" content="Saurav Santara">

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Slate Theme -->
<link href="${css}/bootstrap-materia-theme.css" rel="stylesheet">

<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="${css}/open-iconic-bootstrap.css" rel="stylesheet">

<title>Exception</title>

</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<%@ include file="flows-navbar.jsp" %>

		<div class="content">
		
			<div class="container">
			
				<div class="row">
				
					<div class="col-md-12">
					
						<div class="jumbotron">
						
							<h1>Please contact your administrator!</h1>
							<hr/>
						
							<div class="blockquote" style="word-wrap: break-word">${flowExecutionException}</div>						

							<div class="blockquote" style="word-wrap: break-word">${rootCauseException}</div>						
						
						<!-- jumbotron -->
						</div>
					
					<!-- col-md-12 -->		
					</div>					
				
				<!-- row -->
				</div>
			
			<!-- container -->
			</div>
		
		<!-- content -->				
		</div>

		<%@include file="../../shared/footer.jsp" %>

	<!-- wrapper -->
	</div>

</body>

</html>