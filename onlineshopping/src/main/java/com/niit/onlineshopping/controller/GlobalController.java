package com.niit.onlineshopping.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.niit.onlineshopping.model.UserModel;
import com.niit.shoppingbackend.dao.UserDAO;
import com.niit.shoppingbackend.dto.User;

@ControllerAdvice
public class GlobalController {

	@Autowired
	private HttpSession session;

	@Autowired
	private UserDAO userDAO;

	private UserModel userModel = null;
	private User user = null;

	@ModelAttribute("userModel")
	public UserModel getUserModel() {

		if (session.getAttribute("userModel") == null) {
			
			// get the authentication object
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			
			if (!authentication.getPrincipal().equals("anonymousUser")) {
			
				// get the user from the database
				user = userDAO.getByEmail(authentication.getName());

				if (user != null) {
					
					// create a new UserModel object to pass the user details
					userModel = new UserModel();
	
					userModel.setId(user.getId());
					userModel.setEmail(user.getEmail());
					userModel.setRole(user.getRole());
					userModel.setFullName(user.getFirstName() + " " + user.getLastName());
	
					if (user.getRole().equals("USER")) {		
						// set the cart only if user is a buyer
						userModel.setCart(user.getCart());
					}
	
					// set the userModel in the session
					session.setAttribute("userModel", userModel);
	
					return userModel;
				}
			}
		}
		
		return (UserModel) session.getAttribute("userModel");
	}
}