<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" id="home" href="${contextRoot}/home">Online Shopping</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav mr-auto">
				<%-- <li class="nav-item" id="home">
					<a class="nav-link" href="${contextRoot}/home">Home<span class="sr-only">(current)</span></a>
				</li> --%>
				<li class="nav-item" id="about">
					<a class="nav-link" href="${contextRoot}/about">About</a>
				</li>
				<li class="nav-item" id="contact">
					<a class="nav-link"	href="${contextRoot}/contact">Contact</a>
				</li>
				<li class="nav-item" id="listProducts">
					<a class="nav-link"	href="${contextRoot}/show/all/products">View Products</a>
				</li>
				
				<security:authorize access="hasAuthority('ADMIN')">
					<li class="nav-item" id="manageProducts">
						<a class="nav-link"	href="${contextRoot}/manage/products">Manage Products</a>
					</li>
				</security:authorize>
			</ul>
			<ul class="navbar-nav ml-auto">
			
				<security:authorize access="isAnonymous()">
					<li class="nav-item" id="register">
	                   <a class="nav-link" href="${contextRoot}/register">Sign Up</a>
	                </li>                
	                <li class="nav-item" id="login">
	                   <a class="nav-link" href="${contextRoot}/login">Login</a>
	                </li>
 				</security:authorize>
 				
 				<security:authorize access="isAuthenticated()">
					<li class="dropdown" id="userCart">
						<a href="javascript:void(0)" class="btn btn-default dropdown-toggle" id="dropdownMenu1"
						data-toggle="dropdown"> ${userModel.fullName} </a>
						
						<ul class="dropdown-menu">
						
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