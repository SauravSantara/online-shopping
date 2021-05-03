<%@include file="../shared/flows-header.jsp"%>

<div class="container">
	
	<!-- column to display the personal details -->
	<div class="row">
	
		<div class="col-md-6 offset-md-3">
		
			<div class="card bg-light">
			
				<div class="card-header">
					<h4>Profile</h4>
				</div>
				
				<table class="table table-borderless">
					<tbody>
			           	<tr>
		               		<td>Full Name:</td>
			               	<td>${registerModel.user.firstName} ${registerModel.user.lastName}</td>
					    </tr>
					    <tr>
				        	<td>Email:</td>
					        <td>${registerModel.user.email}</td>
					    </tr>
					    <tr>
					        <td>Contact Number:</td>
					        <td>${registerModel.user.contactNumber}</td>
					    </tr>
			  		</tbody>
			 	</table>
				
				<div class="card-footer">
					<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-warning btn-block">Edit</a>
				</div>
				
			<!-- card -->
			</div>
			
		<!-- col-md-6 offset-md-3 -->
		</div>
		
	<!-- row -->
	</div>
		
	<br />
	<br />
	
	<!-- column to display the address  -->
	<div class="row">
	
		<div class="col-md-6 offset-md-3">
		
			<div class="card bg-light">
			
				<div class="card-header">
					<h4>Address</h4>
				</div>
				
				<table class="table table-borderless">
					<tbody>
			            <tr>
			                <td>Address:</td>
			                <td>${registerModel.address.addressLineOne}, ${registerModel.address.addressLineTwo}</td>
			            </tr>
			            <%-- <tr>
			                <td>Address Line 2:</td>
			                <td>${registerModel.address.addressLineTwo}</td>
			            </tr> --%>
			            <tr>
			                <td>City:</td>
			                <td>${registerModel.address.city}</td>
			            </tr>
			            <tr>
			                <td>Postal Code:</td>
			                <td>${registerModel.address.postalCode}</td>
			            </tr>
			            <tr>
			                <td>State:</td>
			                <td>${registerModel.address.state}</td>
			            </tr>
			            <tr>
			                <td>Country:</td>
			                <td>${registerModel.address.country}</td>
			            </tr>
		           	</tbody>
	           	</table>
				
				<div class="card-footer">
					<!-- anchor to move to the edit of address -->
					<a href="${flowExecutionUrl}&_eventId_address" class="btn btn-warning btn-block">Edit</a>
				</div>
				
			<!-- card -->
			</div>
			
		<!-- col-md-6 offset-md-3 -->
		</div>
	
	<!-- row -->
	</div>
			
	<br />
	<br />

	<!-- to provide the confirm button after displaying the details -->
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="text-center">
				<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-success btn-block">Confirm</a>
			</div>
		</div>
	</div>
	
<!-- container -->
</div>

<%@include file="../shared/flows-footer.jsp"%>