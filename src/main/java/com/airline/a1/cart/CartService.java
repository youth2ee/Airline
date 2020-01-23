package com.airline.a1.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

	@Autowired
	private CartMapper cartMapper;
	
	public void insert(CartVO cartVO) {
		 cartMapper.insert(cartVO);
	}
}
