<%@include file="../shared/flows-header.jsp"%>

<div class="container">

	<div class="row">
	
		<div class="offset-md-2 col-md-8">
		
			<div class="card bg-light">
			
				<div class="card-header">
					<h4>Registration Successful!</h4>
				</div>
			
				<div class="card-body text-center">
					<h3>Welcome! ${registerModel.user.firstName} ${registerModel.user.lastName}</h3>
					<h5>You can use ${registerModel.user.email} as username to login!</h5>
				</div>
				
				<div class="card-footer">
					<a href="${contextRoot}/login" class="btn btn-block btn-success">Login</a>
				</div>
			
			<!-- card -->
			</div>
			
		<!-- offset-md-3 col-md-6 -->
		</div>
		
	<!-- row -->
	</div>
	
<!-- container -->
</div>

<%@include file="../shared/flows-footer.jsp"%>