<h2 class="mb-2 ml-1">Product Categories</h2>
<div class="list-group">
	<a href="${contextRoot}/show/all/products" class="list-group-item" id="all_products"><big>View All</big></a>
	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}"><big>${category.name}</big></a>
	</c:forEach>
</div>
