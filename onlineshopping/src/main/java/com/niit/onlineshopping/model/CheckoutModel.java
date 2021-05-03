package com.niit.onlineshopping.model;

import java.io.Serializable;
import java.util.List;

import com.niit.shoppingbackend.dto.Address;
import com.niit.shoppingbackend.dto.Cart;
import com.niit.shoppingbackend.dto.CartLine;
import com.niit.shoppingbackend.dto.OrderDetail;
import com.niit.shoppingbackend.dto.User;

public class CheckoutModel implements Serializable {

	private static final long serialVersionUID = 1L;

	private User user;
	private Address address;
	private Cart cart;
	private List<CartLine> cartLines;
	private OrderDetail orderDetail;
	private double checkoutTotal;

	public OrderDetail getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(OrderDetail orderDetail) {
		this.orderDetail = orderDetail;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public double getCheckoutTotal() {
		return checkoutTotal;
	}

	public void setCheckoutTotal(double checkoutTotal) {
		this.checkoutTotal = checkoutTotal;
	}

	public List<CartLine> getCartLines() {
		return cartLines;
	}

	public void setCartLines(List<CartLine> cartLines) {
		this.cartLines = cartLines;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
}
