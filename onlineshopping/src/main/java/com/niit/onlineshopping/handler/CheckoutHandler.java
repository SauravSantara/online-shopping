package com.niit.onlineshopping.handler;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.onlineshopping.model.CheckoutModel;
import com.niit.onlineshopping.model.UserModel;
import com.niit.shoppingbackend.dao.CartLineDAO;
import com.niit.shoppingbackend.dao.ProductDAO;
import com.niit.shoppingbackend.dao.UserDAO;
import com.niit.shoppingbackend.dto.Address;
import com.niit.shoppingbackend.dto.Cart;
import com.niit.shoppingbackend.dto.CartLine;
import com.niit.shoppingbackend.dto.OrderDetail;
import com.niit.shoppingbackend.dto.OrderItem;
import com.niit.shoppingbackend.dto.Product;
import com.niit.shoppingbackend.dto.User;

@Component
public class CheckoutHandler {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CartLineDAO cartLineDAO;
	
	@Autowired
	private HttpSession session;
	
	
	public CheckoutModel init(String name) throws Exception {

		User user = userDAO.getByEmail(name);
		CheckoutModel checkoutModel = null;	

		if(user!=null) {
			checkoutModel = new CheckoutModel();
			checkoutModel.setUser(user);
			checkoutModel.setCart(user.getCart());
			
			double checkoutTotal = 0.0;
			List<CartLine> cartLines = cartLineDAO.listAvailable(user.getCart().getId());

			if(cartLines.size() == 0 ) {
				throw new Exception("There are no products available for checkout now!");
			}
			
			for(CartLine cartLine: cartLines) {
				checkoutTotal += cartLine.getTotal();
			}
			
			checkoutModel.setCartLines(cartLines);
			checkoutModel.setCheckoutTotal(checkoutTotal);			
		}			
		
		return checkoutModel;
	}
	
	public List<Address> getAddresses(CheckoutModel model) {
				
		List<Address> addresses = userDAO.listAddresses(model.getUser().getId());
		
		if(addresses.size() == 0) {
			addresses = new ArrayList<>();
			addresses.add(addresses.size(), userDAO.getUserAddress(model.getUser().getId()));
		}

		/*
		 * addresses.add(addresses.size(),
		 * userDAO.getUserAddress(model.getUser().getId()));
		 */			
		
		return addresses;
		
	}
	
	public String saveAddressSelection(CheckoutModel checkoutModel, int addressId) {

		String transitionValue = "success";
		
		Address address = userDAO.getAddress(addressId);		
		
		checkoutModel.setAddress(address);
		
		return transitionValue;
		
	}
			
	public String saveAddress(CheckoutModel checkoutModel, Address address) {

		String transitionValue = "success";
		
		// set the user id
		address.setUserId(checkoutModel.getUser().getId());
		
		userDAO.addAddress(address);
		
		// set the shipping id to flowScope object
		checkoutModel.setAddress(address);
		
		return transitionValue;
	}
		
	public String saveOrder(CheckoutModel checkoutModel) {
		
		String transitionValue = "success";	
		
		// create a new order object
		OrderDetail orderDetail = new OrderDetail();
				
		// attach the user 
		orderDetail.setUser(checkoutModel.getUser());
				
		// attach the shipping address
		orderDetail.setAddress(checkoutModel.getAddress());
		/*
		 * // fetch the address Address address =
		 * userDAO.getUserAddress(checkoutModel.getUser().getId());
		 * orderDetail.setAddress(address);
		 */
		List<CartLine> cartLines = checkoutModel.getCartLines();
		OrderItem orderItem = null;
		
		double orderTotal = 0.0;
		int orderCount = 0;
		Product product = null;
		
		for(CartLine cartLine : cartLines) {
			
			orderItem = new OrderItem();
			
			orderItem.setBuyingPrice(cartLine.getBuyingPrice());
			orderItem.setProduct(cartLine.getProduct());
			orderItem.setProductCount(cartLine.getProductCount());
			orderItem.setTotal(cartLine.getTotal());
			
			orderItem.setOrderDetail(orderDetail);
			orderDetail.getOrderItems().add(orderItem);
			
			orderTotal += orderItem.getTotal();
			orderCount++;
			
			// update the product
			// reduce the quantity of product
			product = cartLine.getProduct();
			product.setQuantity(product.getQuantity() - cartLine.getProductCount());
			product.setPurchases(product.getPurchases() + cartLine.getProductCount());
			productDAO.update(product);
			
			// delete the cartLine
			cartLineDAO.delete(cartLine);
		}
		
		orderDetail.setOrderTotal(orderTotal);
		orderDetail.setOrderCount(orderCount);
		orderDetail.setOrderDate(new Date());
		
		// save the order
		cartLineDAO.addOrderDetail(orderDetail);

		// set it to the orderDetails of checkoutModel
		checkoutModel.setOrderDetail(orderDetail);

		// update the cart
		Cart cart = checkoutModel.getCart();
		cart.setGrandTotal(cart.getGrandTotal() - orderTotal);
		cart.setCartLines(cart.getCartLines() - orderCount);
		cartLineDAO.updateCart(cart);
		
		// update the cart if its in the session
		UserModel userModel = (UserModel) session.getAttribute("userModel");
		if(userModel!=null) {
			userModel.setCart(cart);
		}
		
		return transitionValue;		
	}
	
	public OrderDetail getOrderDetail(CheckoutModel checkoutModel) {
		return checkoutModel.getOrderDetail();
	}
	
}