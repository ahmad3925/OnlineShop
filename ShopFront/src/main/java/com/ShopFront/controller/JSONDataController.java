package com.ShopFront.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.model.Cart;
import com.Shop.model.CartLine;
import com.Shop.model.Product;
import com.Shop.model.Shop;

@RestController
@RequestMapping("/json/data")
public class JSONDataController {

	@Autowired
	HttpSession session;
	@Autowired
	CartDAO cartDAO;
	@Autowired
	ProductDAO productDAO;
	
	@GetMapping("/cartLine/{productId}/update")
	public ResponseEntity<String> updateCart(@PathVariable("productId") int productId, @RequestParam("qty") int qty) {
		Shop user = (Shop) session.getAttribute("user");
		Cart cart = cartDAO.getbyEmail(user.getEmail());
		Product product=productDAO.getSingleProduct(productId);
		CartLine cartLine = cartDAO.getByCartAndProduct(cart.getCartid(), productId);

		cartLine.setProductCount(qty);
		cartLine.setTotal(qty*product.getUnitPrice());
		if (cartDAO.update(cartLine)) {
			List<CartLine> lst = cartDAO.list(cart.getCartid());
			cart.setGrandTotal(this.getGrandTotal(lst));
			cart.setCartLines(lst.size());
			cartDAO.updateCart(cart);
			return new ResponseEntity<String>("<script>window.location.replace('http://localhost:8080/ShopFront/shopingcart');</script>",HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("<script>window.location.replace('http://localhost:8080/ShopFront/');</script>",HttpStatus.OK);
		}

	}
	private int getGrandTotal(List<CartLine> lst) {
		int grand_total = 0;
		for (CartLine obj : lst) {
			grand_total += obj.getTotal();
		}
		return grand_total;
	}
}
