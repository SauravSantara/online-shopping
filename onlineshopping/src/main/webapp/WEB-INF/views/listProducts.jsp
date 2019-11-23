<div class="container">
	<div class="row">
		<!-- Sidebar -->
		<div class="col-lg-3">
			<%@include file="./shared/sidebar.jsp" %>
		</div>
		
		<!-- Products -->
		<div class="col-lg-9">
			<!-- Added breadcrumb component -->
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${userClickAllProducts == true}">
						<ol class="breadcrumb">
							
							<li><a href="${contextRoot}/home">Home</a></li>
							<li>&nbsp / &nbsp</li>
							<li class="active">All Products</li>
							
						</ol>
					</c:if>
					
					<c:if test="${userClickCategoryProducts == true}">
						<ol class="breadcrumb">
							
							<li><a href="${contextRoot}/home">Home</a></li>
							<li>&nbsp / &nbsp</li>
							<li class="active">Category</li>
							<li>&nbsp / &nbsp</li>
							<li class="active">${category.name}</li>
							
						</ol>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>