<div class="container">
	<!-- Breadcrumb -->
	<div class="row">
		<div class="col-lg-12">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
				<li class="breadcrumb-item"><a href="${contextRoot}/show/all/products">Products</a></li>
				<li class="breadcrumb-item active">${product.name}</li>
			</ol>
		</div>
	</div>
	
	<div class="row">
	
		<!-- Display the product image -->
		<div class="col-lg-4">
			<div class="img-thumbnail">
				<img src="${images}/${product.code}.jpg" class="img img-responsive showProductImg" />
			</div>
		</div>
		
		<!-- Display the product description -->
		<div class="col-lg-8">
			<h3>${product.name}</h3>
			<hr/>
			
			<h5>Description: </h5>
			<p>${product.description}</p>
			<hr/>
			
			<h5>Price:</h5>
			<p>&#8377; ${product.unitPrice} /-</p>
			<hr/>
						
			<c:choose>
				<c:when test="${product.quantity < 1}">
					<h5>Qty. Available: </h5>
					<p> <span style="color:red">Out of Stock!</span></p>
					<hr/>
				</c:when>
				<c:otherwise>
					<h5>Qty. Available: </h5>
					<p>${product.quantity}</p>
					<hr/>
				</c:otherwise>
			</c:choose>
			
			<security:authorize access="isAnonymous()">
				<a href="${contextRoot}/login" class="btn btn-primary">
					Login <!-- <span class="oi oi-account-login"></span> -->
				</a>
			</security:authorize>
			
			<security:authorize access="hasAuthority('USER')">
				<c:choose>
					<c:when test="${product.quantity < 1}">
						<a href="javascript:void(0)" class="btn btn-secondary disabled"> 
							<!-- <span class="oi oi-cart"></span> --> Add to Cart
						</a>
					</c:when>
					<c:otherwise>
						<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success"> 
							<!-- <span class="oi oi-cart"></span> --> Add to Cart
						</a>
					</c:otherwise>
				</c:choose> 
			</security:authorize>
			
			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/manage/${product.id}/product" class="btn btn-warning">
					<!-- <span class="oi oi-pencil"></span> --> Edit
				</a>			
			</security:authorize>
			
			<a href="${contextRoot}/show/all/products" class="btn btn-warning float-right">Continue Shopping</a>
		</div>	
	</div>

</div>