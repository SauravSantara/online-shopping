package com.niit.onlineshopping.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.onlineshopping.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	private final static Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/show")
	public ModelAndView showCart(@RequestParam(name = "result", required=false)String result) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Cart");
		mv.addObject("userClickShowCart", true);
		
		if(result!=null) {
			switch(result) {
			case "updated":
				mv.addObject("message", "Cart has been updated successfully!");
				break;
			case "added":
				mv.addObject("message", "Product has been added in cart successfully!");
				break;
			case "deleted":
				mv.addObject("message", "Product has been removed from cart successfully!");
				break;					
			case "maximum":
				mv.addObject("message", "Maximum limit for the item has been reached!");
				break;					
			case "unavailable":
				mv.addObject("message", "Product quantity is not available!");
				break;					
			case "error":
				mv.addObject("message", "Something went wrong!");
				break;			
			}
		}
		else {
			String response = cartService.validateCartLine();
			if(response.equals("result=modified")) {
				mv.addObject("message", "One or more items inside cart has been modified!");
			}
		}
		
		mv.addObject("cartLines", cartService.getCartLines());		
		return mv;		
	}
	
	@RequestMapping("/{cartLineId}/update")
	public String updateCart(@PathVariable int cartLineId, @RequestParam int count) {		
		String response = cartService.manageCartLine(cartLineId, count);		
		return "redirect:/cart/show?"+response;
	}
		
	@RequestMapping("/{cartLineId}/delete")
	public String updateCart(@PathVariable int cartLineId) {		
		String response = cartService.deleteCartLine(cartLineId);		
		return "redirect:/cart/show?"+response;
	}
	
	@RequestMapping("/add/{productId}/product")
	public String addCart(@PathVariable int productId) {		
		String response = cartService.addCartLine(productId);		
		return "redirect:/cart/show?"+response;
	}

	/* after validating it redirect to checkout
	 * if result received is success proceed to checkout 
	 * else display the message to the user about the changes in cart page
	 * */	
	@RequestMapping("/validate")
	public String validateCart() {	
		String response = cartService.validateCartLine();
		if (!response.equals("result=success")) {
			return "redirect:/cart/show?"+response; 
		} 
		else { 
			return "redirect:/checkout"; 
		}
	}
	
}
