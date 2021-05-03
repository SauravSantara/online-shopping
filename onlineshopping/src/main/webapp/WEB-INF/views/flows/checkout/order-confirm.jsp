<%@include file="../shared/flows-header.jsp"%>

	<div class="container">
	
		<div class="alert alert-success">
			<h3 class="text-center">Your Order is Confirmed!!</h3>
		</div>
		
	    <div class="row">
	        <div class="col-md-12">
	    		<div>
	    			<h2>Invoice</h2>
	    			<br>
	    			<h3>Order # ${orderDetail.id}</h3>
	    		</div>
	    		<hr>
	    		
	    		<div class="row">
	    			<div class="col-md-6">
	    				<strong>Delivered To:</strong>
	    				<table class="table table-borderless">
							<tbody>
								<tr>
				               		<td>Full Name:</td>
					               	<td>${orderDetail.user.firstName} ${orderDetail.user.lastName}</td>
							    </tr>
							    <tr>
									<td>Address:</td>
									<td>${orderDetail.address.addressLineOne}, ${orderDetail.address.addressLineTwo}</td>
								</tr>
								<tr>
									<td>City:</td>
									<td>${orderDetail.address.city}</td>
								</tr>
								<tr>
									<td>Postal Code:</td>
									<td>${orderDetail.address.postalCode}</td>
								</tr>
								<tr>
									<td>State:</td>
									<td>${orderDetail.address.state}</td>
								</tr>
								<tr>
									<td>Country:</td>
									<td>${orderDetail.address.country}</td>
								</tr>
							</tbody>
						</table>
	    			</div>
	    			
	    			<div class="col-md-3">
    					<strong>Payment Method:</strong>
    					<br>
    					Card Payment
	    			</div>
	    			
	    			<div class="col-md-3">
    					<strong>Order Date:</strong>
    					<br>
    					${orderDetail.orderDate}
	    			</div>
	    			
	    		<!-- row -->
	    		</div>
	    	
	    	<!-- col-md-12 -->
	    	</div>
	    
	    <!-- row -->
	    </div>
	    <hr>
	    
	    <div class="text-center">
	    	<a href="${contextRoot}/show/all/products" class="btn btn-lg btn-warning">Continue Shopping</a>
	    </div>
	
	<!-- container -->
	</div>
	
<%@include file="../shared/flows-footer.jsp" %>	