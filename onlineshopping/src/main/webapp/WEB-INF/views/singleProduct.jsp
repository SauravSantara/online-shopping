<div class="container">
	<!-- Breadcrumb -->
	<div class="row">
		<div class="col-xs-12 col-lg-12">
			<ol class="breadcrumb">
				<li><a href="${contextRoot}/home">Home</a></li>
				<li>&nbsp / &nbsp</li>
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				<li>&nbsp / &nbsp</li>
				<li class='active'>${product.name}</li>
			</ol>
		</div>
	</div>
	
	<div class="row">
	
		<!-- Display the product image -->
		<div class="col-xs-12 col-sm-12 col-lg-4">
			<div class="thumbnail">
				<img src="${images}/${product.code}.jpg" class="img img-responsive showProductImg" />
			</div>
		</div>
		
		<!-- Display the product description -->
		<div class="col-xs-12 col-sm-12 col-lg-8">
			<h3>${product.name}</h3>
			<hr/>
			
			<p>${product.description}</p>
			<hr/>
			
			<h4>Price: <strong> &#8377; ${product.unitPrice} /-</strong></h4>
						
			<c:choose>
				<c:when test="${product.quantity < 1}">
					<h6>Qty. Available: <span style="color:red">Out of Stock</span></h6>
				</c:when>
				<c:otherwise>
					<h6>Qty. Available: ${product.quantity}</h6>
				</c:otherwise>
			</c:choose>
			
			<security:authorize access="isAnonymous()">
				<a href="${contextRoot}/login" class="btn btn-primary">
					Login <span class="oi oi-account-login"></span>
				</a>
			</security:authorize>
			
			<security:authorize access="hasAuthority('USER')">
				<c:choose>
					<c:when test="${product.quantity < 1}">
						<a href="javascript:void(0)" class="btn btn-secondary disabled"> 
							<span class="oi oi-cart"> Add to Cart</span>
						</a>
					</c:when>
					<c:otherwise>
						<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success"> 
							<span class="oi oi-cart"> Add to Cart</span>
						</a>
					</c:otherwise>
				</c:choose> 
			</security:authorize>
			
			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/manage/${product.id}/product" class="btn btn-warning">
					<span class="oi oi-pencil"> Edit</span>
				</a>			
			</security:authorize>
			
			<a href="${contextRoot}/show/all/products" class="btn btn-primary">Back</a>
		</div>	
	</div>

</div>