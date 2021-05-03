<c:set var="availableCount" value="${userModel.cart.cartLines}" />
<div class="container">

	<div class="row">
		
		<c:if test="${not empty message}">
			<div class="alert alert-info col-md-12">
				<h3 class="text-center">${message}</h3>
			</div>
		</c:if>
	
		<div class="col-md-8">
			<c:choose>
				<c:when test="${not empty cartLines}">
					<table id="cart" class="table table-hover">
						<thead>
							<tr class="text-center">
								<th style="width: 45%">Product</th>
								<th style="width: 20%">Price</th>
								<th style="width: 10%">Quantity</th>
								<th style="width: 20%">Subtotal</th>
								<th style="width: 5%"></th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${cartLines}" var="cartLine">
								<c:if test="${cartLine.available == false}">
									<c:set var="availableCount" value="${availableCount - 1}"/>
								</c:if>
								<tr>
									<td data-th="Product">
										<div class="row">
											<div class="col-md-4">
												<img src="${images}/${cartLine.product.code}.jpg" alt="${cartLine.product.name}" class="img-fluid cartImg" />
											</div>
											<div class="col-md-8">
												<h5 class="nomargin">${cartLine.product.name}
													<c:if test="${cartLine.available == false }">
														<strong class="unavailable">(Not Available)</strong>
													</c:if>
												</h5>
												<p><strong>Brand : </strong>${cartLine.product.brand}</p>
												<p><strong>Description : </strong>${cartLine.product.description}</p>
											</div>
										</div>
									</td>
									
									<td data-th="Price" class="text-center">&#8377; ${cartLine.buyingPrice}</td>
									
									<td data-th="Quantity">
										<input type="number" id="count_${cartLine.id}" min="1" max="5" class="form-control text-center" value="${cartLine.productCount}">
									</td>
									
									<td data-th="Subtotal" class="text-center">&#8377; ${cartLine.total}</td>
									
									<td class="actions" data-th="">
										<%-- <c:if test="${cartLine.available == true}">
											<button type="button" name="refreshCart" value="${cartLine.id}" class="btn btn-info btn-sm">
												<span class="oi oi-loop"></span>
											</button> 
										</c:if> --%>
										<a href="${contextRoot}/cart/${cartLine.id}/delete" class="btn btn-danger btn-sm">
											<span class="oi oi-trash"></span>
										</a>
									</td>
								</tr>
		
							</c:forEach>
						</tbody>
						
					</table>
				</c:when>
		
				<c:otherwise>
					<div class="jumbotron">
						<div class="text-center">
							<h1>Your cart is empty!</h1>
						</div>
					</div>
				</c:otherwise>
				
			</c:choose>
			
		</div>
		
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Summary</h4>
					<table class="table">
						<tr>
							<td class="text-left">Item Total: </td>
							<td class="text-right">&#8377; ${userModel.cart.grandTotal}/-</td>
						</tr>
						<tr>
							<td class="text-left">Delivery Charges: </td>
							<td class="text-right">FREE</td>
						</tr>
						<tr class="font-weight-bold">
							<td class="text-left">To Pay: </td>
							<td class="text-right">&#8377; ${userModel.cart.grandTotal}/-</td>
						</tr>
					</table>
					<c:choose>
						<c:when test="${availableCount != 0}">
							<td><a href="${contextRoot}/cart/validate" class="btn btn-success btn-block">Checkout</a></td>
						</c:when>							
						<c:otherwise>
							<td><a href="javascript:void(0)" class="btn btn-success btn-block disabled">Checkout</a></td>
						</c:otherwise>
					</c:choose>	
				</div>
			</div>
			<br/>
			<h5 class="text-center">OR</h5>
			<br/>
			<a href="${contextRoot}/show/all/products" class="btn btn-warning btn-block">Continue Shopping</a>
		</div>

	</div>

</div>