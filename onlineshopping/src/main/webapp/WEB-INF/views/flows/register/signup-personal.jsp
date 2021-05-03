<%@include file="../shared/flows-header.jsp" %>

<div class="comtainer">

	<div class="row">
	
		<div class="col-md-6 offset-md-3">
			<div class="card bg-light">
			
				<div class="card-header">
					<h4>Profile</h4>
				</div>

				<div class="card-body">
					<sf:form method="POST" class="form-group" id="registerForm" modelAttribute="user">
						
						<div class="form-group row">
							<label class="col-form-label col-md-4">First Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="firstName" class="form-control" placeholder="First Name" />
								<sf:errors path="firstName" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Last Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="lastName" class="form-control" placeholder="Last Name" />
								<sf:errors path="lastName" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Email</label>
							<div class="col-md-8">
								<sf:input type="text" path="email" class="form-control" placeholder="emailAddress@domain.com" />
								<sf:errors path="email" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Contact Number</label>
							<div class="col-md-8">
								<sf:input type="text" path="contactNumber" class="form-control" placeholder="10 Digit Mobile Number" maxlength="10" />
								<sf:errors path="contactNumber" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="password" class="form-control" placeholder="Password" />
								<sf:errors path="password" cssClass="form-text" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-form-label col-md-4">Confirm Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="confirmPassword" class="form-control" placeholder="Re-enter Password" />
								<sf:errors path="confirmPassword" cssClass="form-text" element="em" />
							</div>
						</div>


						<!-- radio button using bootstrap class of radio-inline -->
						<div class="form-group row d-none">
							<label class="col-form-label col-md-4">Select Role</label>
							<div class="col-md-8"> 
								<label class="form-inline">
									<sf:radiobutton path="role" value="USER" checked="checked" /> User </label>
								<label class="form-inline">
									<sf:radiobutton path="role" value="SUPPLIER" /> Supplier </label>
							</div>
						</div>

						<div class="form-group row ">
							<div class="offset-md-4 col-md-8">
								<button type="submit" class="btn btn-success btn-block" name="_eventId_address">
									Next <!-- <span class="oi oi-caret-right"></span> -->
								</button>
							</div>
						</div>
					</sf:form>
				</div>
				
				<div class="card-footer">
					<div class="text-center">
						<a href="${contextRoot}/login">Existing User? Click here to Login</a>
					</div>
				</div>
							
			</div>
		</div>
	</div>
</div>

<%@include file="../shared/flows-footer.jsp" %>
