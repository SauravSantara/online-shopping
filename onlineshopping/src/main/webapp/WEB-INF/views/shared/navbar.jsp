<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
	<div class="container">
		<a class="navbar-brand active" id="logo" href="${contextRoot}/home">Online Shopping</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
			aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item" id="home">
					<a class="nav-link" href="${contextRoot}/home"><big>Home</big></a>
				</li>
				<li class="nav-item" id="about">
					<a class="nav-link" href="${contextRoot}/about"><big>About</big></a>
				</li>
				<li class="nav-item" id="contact">
					<a class="nav-link"	href="${contextRoot}/contact"><big>Contact</big></a>
				</li>
				<li class="nav-item" id="listProducts">
					<a class="nav-link"	href="${contextRoot}/show/all/products"><big>View Products</big></a>
				</li>
				
				<security:authorize access="hasAuthority('ADMIN')">
					<li class="nav-item" id="manageProducts">
						<a class="nav-link"	href="${contextRoot}/manage/products"><big>Manage Products</big></a>
					</li>
				</security:authorize>
			</ul>
			
			<ul class="navbar-nav ml-auto">
			
				<security:authorize access="isAnonymous()">
					<li class="nav-item" id="signup">
	                   <a class="nav-link" href="${contextRoot}/register"><big>Sign Up</big></a>
	                </li>                
	                <li class="nav-item" id="login">
	                   <a class="nav-link" href="${contextRoot}/login"><big>Login</big></a>
	                </li>
 				</security:authorize>
 				
 				<security:authorize access="isAuthenticated()">
					<li class="dropdown" id="userCart">
						<a href="javascript:void(0)" class="btn btn-light dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
							${userModel.fullName}
						</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
						
							<security:authorize access="hasAuthority('USER')">
								<li class="dropdown-item">
									<a href="${contextRoot}/cart/show"> 
										Items in Cart :
										<!-- <span class="oi oi-cart"></span> -->
										<span class="badge badge-light"> ${userModel.cart.cartLines} </span>
										<%-- - &#8377; ${userModel.cart.grandTotal} --%>
									</a>
								</li>
								<li class="dropdown-divider" role="separator"></li>
							</security:authorize>
							
							<li class="dropdown-item"><a href="${contextRoot}/perform-logout">Logout</a></li>
						</ul>
					</li>
				</security:authorize>
				
			</ul>
		</div>
	</div>
</nav>

<script>
	window.userRole = '${userModel.role}';	
</script>