package com.niit.shoppingbackend.dao;

import java.util.List;

import com.niit.shoppingbackend.dto.Cart;
import com.niit.shoppingbackend.dto.CartLine;
import com.niit.shoppingbackend.dto.OrderDetail;

public interface CartLineDAO {

	// common methods
	public CartLine get(int id);	
	public boolean add(CartLine cartLine);
	public boolean update(CartLine cartLine);
	public boolean delete(CartLine cartLine);
	public List<CartLine> list(int cartId);
	
	// list of available cartLine
	public List<CartLine> listAvailable(int cartId);
	
	// fetch the CartLine based on cartId and productId
	public CartLine getByCartAndProduct(int cartId, int productId);
	
	// update the cart
	boolean updateCart(Cart cart);

	// adding order details
	boolean addOrderDetail(OrderDetail orderDetail);

}
