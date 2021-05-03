<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">

		<!--  To display all the goods -->
		<div class="col-md-6">

			<div class="card col-md-12">
				<div class="card-body">
					<h4 class="card-title">Order Summary</h4>
					<table class="table">
						<thead>
							<tr>
								<th style="width: 30%">Product</th>
								<th style="width: 25%">Price</th>
								<th style="width: 20%">Quantity</th>
								<th style="width: 25%">SubTotal</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
								<tr>
									<td data-th="Product">${cartLine.product.name}</td>
									<td data-th="Price">${cartLine.buyingPrice}</td>
									<td data-th="Quantity" class="text-center">${cartLine.productCount}</td>
									<td data-th="SubTotal">&#8377; ${cartLine.total}/-</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			<div class="card col-md-12">
				<div class="card-body">
					<h4 class="card-title">Payment Summary</h4>
					<table class="table">
						<tr>
							<td class="text-left">Grand Total:</td>
							<td class="text-right">&#8377; ${userModel.cart.grandTotal}/-</td>
						</tr>
						<tr>
							<td class="text-left">Delivery Charges:</td>
							<td class="text-right">FREE</td>
						</tr>
						<tr class="font-weight-bold">
							<td class="text-left">To Pay:</td>
							<td class="text-right">&#8377; ${userModel.cart.grandTotal}/-</td>
						</tr>
					</table>
				</div>
			</div>
			
		</div>

		<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">Payment Details</h3>
				</div>

				<div class="card-body">
					<form role="form">
						
						<div class="form-group">
							<label for="cardNumber">CARD NUMBER</label>
							<input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number" required autofocus /> 
						</div>
						
						<div class="row">
							<div class="col-md-7">
								<div class="form-group">
									<label for="expiryMonth">EXPIRY DATE</label> 
									<br />
									<div class="col-md-6 pl-0 d-inline">
										<input type="text" class="form-control" id="expiryMonth" placeholder="MM" required />
									</div>
									<div class="col-md-6 pl-0 d-inline">
										<input type="text" class="form-control" id="expiryYear" placeholder="YY" required />
									</div>
								</div>
							</div>
							
							<div class="col-md-5 float-right">
								<div class="form-group">
									<label for="cvvCode">CVV CODE</label> 
									<input type="password" class="form-control" id="cvvCode" placeholder="CVV" required />
								</div>
							</div>
							
						</div>
						
					</form>
				</div>
			</div>
			
			<br /> 
			<a href="${flowExecutionUrl}&_eventId_pay" class="btn btn-success btn-lg btn-block" role="button">Pay</a>

		</div>

	</div>

</div>

<%@include file="../shared/flows-footer.jsp"%>