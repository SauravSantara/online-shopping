package com.niit.shoppingbackend.dao;

import java.util.List;

import com.niit.shoppingbackend.dto.Product;

public interface ProductDAO {

	Product get(int productId);
	List<Product> list();	
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);
	
	// business methods
	List<Product> listActiveProducts();
	List<Product> listActiveProductsByCategory(int categoryId);
	List<Product> getLatestActiveProducts(int count);
	List<Product> getProductsByParam(String param, int count);
	
}
