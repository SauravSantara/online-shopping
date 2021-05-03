package com.niit.shoppingbackend.dao;

import java.util.List;

import com.niit.shoppingbackend.dto.Address;
import com.niit.shoppingbackend.dto.User;

public interface UserDAO {

	// user
	boolean addUser(User user);
	User getByEmail(String email);
	User get(int id);
	
	// address
	boolean addAddress(Address address);
	Address getAddress(int addressId);
	boolean updateAddress(Address address);
	
	// alternative
	/*
	 * Address getBillingAddress(int userId); List<Address>
	 * listShippingAddresses(int userId);
	 */
	Address getUserAddress(int userId);
	List<Address> listAddresses(int userId);
	
}
