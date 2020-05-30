<div class="container">

	<article class="card">
		<div class="card-body p-5">

			<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" data-toggle="pill" href="#nav-tab-card">
						<i class="fa fa-credit-card"></i> Credit Card
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="pill" href="#nav-tab-paypal"> 
						<i class="fab fa-paypal"></i> Paypal
					</a>
				</li>
			</ul>

			<div class="tab-content">
				<div class="tab-pane fade show active" id="nav-tab-card">
				
					<p class="alert alert-success">Some text success or error</p>
					
					<form role="form">
						<div class="form-group">
							<label for="username">Full name (on the card)</label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="oi oi-person"></i></span>
								</div>
								<input type="text" class="form-control" name="username" placeholder="John Doe" required="required">
							</div><!-- input-group.// -->
						</div><!-- form-group.// -->

						<div class="form-group">
							<label for="cardNumber">Card number</label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="oi oi-credit-card"></i></span>
								</div>
								<input type="text" class="form-control" name="cardNumber" placeholder="xxxx-xxxx-xxxx-xxxx"
								required="required">
							</div><!-- input-group.// -->
						</div><!-- form-group.// -->

						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label for="expiry">Expiration</label>
									<div class="input-group">
										<input type="date" class="form-control" name="expiry" class="form-control"
										required="required">
									</div><!-- input-group.// -->
								</div><!-- form-group.// -->
							</div>
							
							<div class="col-6">
								<div class="form-group">
									<label for="cvv">CVV</label>
									<input class="form-control" type="text" name="cvv" min="3"
									placeholder="3 digits code on back side of the card" required="required">
								</div><!-- form-group.// -->
							</div>
						</div><!-- row.// -->
						
						<div class="row">
							<div class="col-6">
								<button class="subscribe btn btn-success btn-block" type="button">Confirm</button>
							</div>
							<div class="col-6">
								<button class="subscribe btn btn-danger btn-block" type="button">Cancel</button>
							</div>
						</div>
						
					</form>
				</div><!-- tab-pane.// -->
				
				<div class="tab-pane fade" id="nav-tab-paypal">
					<p>Paypal is easiest way to pay online</p>
					<p>
						<button type="button" class="btn btn-primary">
<!-- 						<i class="fab fa-paypal"></i>  -->
							Log in my Paypal
						</button>
					</p>
					<p>
						<strong>Note:</strong> Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua.
					</p>
				</div><!-- tab-pane.// -->
			</div><!-- tab-content .// -->

		</div><!-- card-body.// -->
	</article><!-- card.// -->
</div><!--container end.//-->