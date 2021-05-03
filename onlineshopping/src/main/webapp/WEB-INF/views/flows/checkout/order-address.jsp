<%@include file="../shared/flows-header.jsp" %>

<div class="container">

	<div class="row">
		
		<div class="col-md-4">
			
			<h4>Select Address</h4>
			<hr/>
			
			<div class="row">
				<c:forEach items="${addresses}" var="address">					
					
					<div class="col-md-12 card border-dark">
						<div class="card-body">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<td>Address:</td>
										<td>${address.addressLineOne}, ${address.addressLineTwo}</td>
									</tr>
									<tr>
										<td>City:</td>
										<td>${address.city}</td>
									</tr>
									<tr>
										<td>Postal Code:</td>
										<td>${address.postalCode}</td>
									</tr>
									<tr>
										<td>State:</td>
										<td>${address.state}</td>
									</tr>
									<tr>
										<td>Country:</td>
										<td>${address.country}</td>
									</tr>
								</tbody>
							</table>
							<div class="text-center">
								<a href="${flowExecutionUrl}&_eventId_addressSelection&addressId=${address.id}" class="btn btn-primary btn-block">Select</a>
							</div>
						</div>
					</div>
				</c:forEach>			
			</div>

		</div>
		
		<div class="col-md-8">
		
			<div class="card bg-light">
			
				<div class="card-header">
					<h4>Add New Address</h4>
				</div>
				
				<div class="card-body">
									
					<sf:form method="POST" modelAttribute="address" id="addressForm" >
					
						<div class="form-group row">
							<label class="col-form-label col-md-4" for="addressLineOne">Address Line One</label>
							<div class="col-md-8">
								<sf:input type="text" path="addressLineOne" class="form-control" placeholder="Enter Address Line One" />
								<sf:errors path="addressLineOne" cssClass="form-text" element="em"/> 
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="addressLineTwo">Address Line Two</label>
							<div class="col-md-8">
								<sf:input type="text" path="addressLineTwo" class="form-control" placeholder="Enter Address Line Two" />
								<sf:errors path="addressLineTwo" cssClass="form-text" element="em"/> 
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="city">City</label>
							<div class="col-md-8">
								<sf:input type="text" path="city" class="form-control" placeholder="Enter City Name" />
								<sf:errors path="city" cssClass="form-text" element="em"/> 
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-form-label col-md-4" for="postalCode">Postal Code</label>
							<div class="col-md-8">
								<sf:input type="text" path="postalCode" class="form-control" placeholder="6 Digit Pin Code" />
								<sf:errors path="postalCode" cssClass="form-text" element="em"/> 
							</div>
						</div>							
					
						<div class="form-group row">
							<label class="col-form-label col-md-4" for="state">State</label>
							<div class="col-md-8">
								<sf:input type="text" path="state" class="form-control" placeholder="Enter State Name" />
								<sf:errors path="state" cssClass="form-text" element="em"/> 
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4" for="country">Country</label>
							<div class="col-md-8">
								<sf:input type="text" path="country" class="form-control" placeholder="Enter Country Name" />
								<sf:errors path="country" cssClass="form-text" element="em"/> 
							</div>
						</div>
						
						
						<div class="form-group row">
							<div class="offset-md-4 col-md-8">
								<button type="submit" name="_eventId_saveAddress" class="btn btn-success btn-block">
									<!-- <span class="glyphicon glyphicon-plus"></span> --> Add Address
								</button>
							</div>
						</div>
					
					</sf:form>					
				
				<!-- panel-body -->
				</div>
			
			<!-- panel -->
			</div>
		
		<!-- col-md-8 -->
		</div>

	<!-- row -->
	</div>

<!-- container -->
</div>

<%@include file="../shared/flows-footer.jsp" %>	