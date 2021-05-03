<div class="container">

	<div class="row">

		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>

		<div class="col-md-9">
			<div id="carouselExampleIndicators" class="carousel slide mb-4" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					<!-- <li data-target="#carouselExampleIndicators" data-slide-to="3"></li> -->
				</ol>
				
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<a href="${contextRoot}/show/5/product">
							<img class="d-block img-fluid homeimg" src="${images}/banner1.jpg" alt="First banner">
						 	<div class="carousel-caption d-none d-md-block">
								<h5>Dell Latitude E6510</h5>
								<h5>&#8377; 48000/-</h5>
							</div>
						</a>
					</div>
					
					<div class="carousel-item">
						<a href="${contextRoot}/show/2/product">
							<img class="d-block img-fluid homeimg" src="${images}/banner2.jpg" alt="Second banner">
						 	<div class="carousel-caption d-none d-md-block">
								<h5 style="color:black">Samsung Galaxy S7</h5>
								<h5 style="color:black">&#8377; 32000/-</h5>
							</div>
						</a>
					</div>
					
					<div class="carousel-item">
						<a href="${contextRoot}/show/33/product">
							<img class="d-block img-fluid homeimg" src="${images}/banner3.jpg" alt="Third banner">
						 	<div class="carousel-caption d-none d-md-block">
								<h5 style="color:black">Sony Bravia</h5>
								<h5 style="color:black">&#8377; 61900/-</h5>
							</div>
						</a>
					</div>
					
					<%-- <div class="carousel-item">
						<img class="d-block img-fluid homeimg" src="${images}/banner4.jpg" alt="Fourth banner">
					 	<div class="carousel-caption d-none d-md-block">
							<h5>Fourth banner</h5>
							<p>...</p>
						</div>
					</div>
					 --%>
					<!-- <div class="carousel-item">
						<img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
					</div> -->
				</div>
				
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"> 
					<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
					<span class="sr-only">Previous</span>
				</a> 
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> 
					<span class="carousel-control-next-icon" aria-hidden="true"></span> 
					<span class="sr-only">Next</span>
				</a>
			</div>

		</div>
		<!-- /.col-lg-9 -->

	</div>
	<!-- /.row -->

	<div class="row">
		<div class="col-md-12">
			<h3>Our Most Viewed Products</h3>
			<hr />
		</div>
	</div>

	<div class="row">

		<div class="card-deck row row-cols-1 row-cols-md-3 col-md-12">
		
			<c:forEach items="${mvProducts}" var="product">
				<div class="col">
					<div class="card border-dark h-100">
						<img src="${images}/${product.code}.jpg" alt="${product.name}" class="card-img-top" width="200" height="250" />
						<div class="card-body">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<td colspan="2" class="card-title text-center" height="40"><h4>${product.name}</h4></td>
									</tr>
									<tr>
										<td class="card-text text-left" height="20">Price: </td>
										<td class="card-text text-right" height="20">&#8377; ${product.unitPrice}</td>
									</tr>
									<tr>
										<td class="card-text text-left" height="100">Description: </td>
										<td class="card-text text-right" height="100">${product.description}</td>
									</tr>
								</tbody>
							</table>
						<!-- card-body -->	
						</div>
						<div class="card-footer">
							<a href="${contextRoot}/show/${product.id}/product" class="btn btn-secondary btn-block">View</a>
						</div>
					<!-- card -->
					</div>
				<!-- col mb-4 -->
				</div>
				
			</c:forEach>
			
		<!-- card-deck -->
		</div>

	</div>
	<!-- /.row -->
	
</div>
<!-- /.container -->