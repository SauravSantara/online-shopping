<div class="container">

	<c:if test="${not empty message}">
		<div class="alert alert-info">
			<h3 class="text-center">${message}</h3>
		</div>
	</c:if>

	<c:choose>
		<c:when test="${not empty cartLines}">
			<table id="cart" class="table table-hover table-sm">
				<thead>
					<tr>
						<th style="width: 45%">Product</th>
						<th style="width: 10%">Price</th>
						<th style="width: 8%">Quantity</th>
						<th style="width: 22%" class="text-center">Subtotal</th>
						<th style="width: 15%"></th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${cartLines}" var="cartLine">
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-4 d-xs-none">
										<img src="${images}/${cartLine.product.code}.jpg"
											alt="${cartLine.product.name}" class="img-fluid cartImg" />
									</div>
									<div class="col-8">
										<h4 class="nomargin">${cartLine.product.name}
											<c:if test="${cartLine.available == false }">
												<strong class="unavailable">(Not Available)</strong>
											</c:if>
										</h4>
										<p>Brand - ${cartLine.product.brand}</p>
										<p>Description - ${cartLine.product.description}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">&#8377; ${cartLine.buyingPrice}</td>
							<td data-th="Quantity">
								<input type="number" id="count_${cartLine.id}" min="1" max="3" class="form-control text-center" value="${cartLine.productCount}">
							</td>
							<td data-th="Subtotal" class="text-center">&#8377; ${cartLine.total}</td>
							<td class="actions" data-th="">
								<button type="button" name="refreshCart" value="${cartLine.id}" class="btn btn-info btn-sm">
									<span class="oi oi-loop"></span>
								</button> 
								<a href="${contextRoot}/cart/${cartLine.id}/delete" class="btn btn-danger btn-sm">
									<span class="oi oi-trash"></span>
								</a>
							</td>
						</tr>

					</c:forEach>
				</tbody>
				
				<tfoot>
					<%-- <tr class="d-xs-block">
						<td class="text-center">
							<strong>Total : &#8377; ${userModel.cart.grandTotal}</strong>
						</td>
					</tr> --%>
					<tr>
						<td>
							<a href="${contextRoot}/show/all/products" class="btn btn-warning"><span class="oi oi-chevron-left"></span> Continue Shopping</a>
						</td>
						<td colspan="2" ></td>
						<td class="text-center" >
							<strong>Total &#8377; ${userModel.cart.grandTotal}</strong>
						</td>
						<td>
							<a href="${contextRoot}/payment" class="btn btn-success">Checkout <span class="oi oi-chevron-right"></span></a>
						</td>
					</tr>
				</tfoot>
				
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