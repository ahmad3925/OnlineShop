package com.ShopFront.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.DAO.ShopDAO;
import com.Shop.model.Cart;
import com.Shop.model.CartLine;
import com.Shop.model.Product;
import com.Shop.model.Shop;

@Controller
public class CartController {

	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	Cart cart;
	
	@Autowired
	ProductDAO productDAO;

	@Autowired
	CartLine cartLine;
	
	@Autowired
	ShopDAO shopDAO;

	@RequestMapping(value = "/addToCart/{prodid}")
	public String pr1(@PathVariable("prodid") int prodid, @RequestParam("qty") int quntity, Model model) {
		Product obj = productDAO.getSingleProduct(prodid);

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		Shop user = shopDAO.getUserByEmail(email);
		if (user == null) {
			return "redirect:/login";
		}
		Cart cart = cartDAO.getbyEmail(email);
		System.out.println("about to print sql-------------------------");
		if (cartDAO.getByCartAndProduct(cart.getCartid(), obj.getProdid()) != null) {
			cartLine = cartDAO.getByCartAndProduct(cart.getCartid(), obj.getProdid());
			cartLine.setProductCount(cartLine.getProductCount() + 1);
			cartLine.setTotal(quntity * cartLine.getProduct().getUnitPrice());
			cartDAO.update(cartLine);
		} else {
			cartLine.setProduct(obj);
			cartLine.setProductCount(quntity);
			cartLine.setBuyingPrice(obj.getUnitPrice());
			cartLine.setCartId(cart.getCartid());
			cartLine.setTotal(quntity * obj.getUnitPrice());
			cartDAO.add(cartLine);
		}
		cart.setCartLines(cartDAO.listAvailable(cart.getCartid()).size());
		List<CartLine> lst = cartDAO.list(cart.getCartid());
		cart.setGrandTotal(this.getGrandTotal(lst));
		cart.setCartLines(lst.size());
		cartDAO.updateCart(cart);

		return "redirect:/shopingcart";

	}
	@RequestMapping(value = "/updatecart/{prodid}")
	public String updatecart(@PathVariable("prodid") int prodid, @RequestParam("qty") int qty) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		Shop user = shopDAO.getUserByEmail(email);
		if (user == null) {
			return "redirect:/login";
		}
		Product obj = productDAO.getSingleProduct(prodid);

		Cart cart = cartDAO.getbyEmail(email);
		System.out.println("about to print sql-------------------------");
		if (cartDAO.getByCartAndProduct(cart.getCartid(), obj.getProdid()) != null) {
			cartLine = cartDAO.getByCartAndProduct(cart.getCartid(), obj.getProdid());
			cartLine.setProductCount(qty);
			cartLine.setTotal(qty * cartLine.getProduct().getUnitPrice());
			cartDAO.update(cartLine);
		}

		cart.setCartLines(cartDAO.listAvailable(cart.getCartid()).size());
		List<CartLine> lst = cartDAO.list(cart.getCartid());
		cart.setGrandTotal(this.getGrandTotal(lst));
		cart.setCartLines(lst.size());
		cartDAO.updateCart(cart);

		return "redirect:/shopingcart";
	}
	@RequestMapping("shopingcart")
	public String shopingcart(Model model, HttpSession session) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		Shop user = shopDAO.getUserByEmail(email);
		if (user == null) {
			return "redirect:/login";
		}

		boolean loggedIn = (boolean) session.getAttribute("loggedIn");
		if (!loggedIn) {
			return "redirect:/login";
		}

		Cart cart = cartDAO.getbyEmail(email);
		List<CartLine> lst = cartDAO.listAvailable(cart.getCartid());
		model.addAttribute("cartList", lst);
		session.setAttribute("size", cart.getCartLines());
		model.addAttribute("grandTotal", cart.getGrandTotal());

		return "shopingcart";
	}


	@RequestMapping(value = "/remove/{id}")
	public String goToDelete(@PathVariable("id") int id, Model model, HttpSession session) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		Shop user = shopDAO.getUserByEmail(email);
		if (user == null) {
			return "redirect:/login";
		}

		boolean loggedIn = (boolean) session.getAttribute("loggedIn");
		if (!loggedIn) {
			return "redirect:/login";
		}

		CartLine cartLine = cartDAO.get(id);
		cartDAO.remove(cartLine);

		Shop shop = (Shop) session.getAttribute("user");

		cart = cartDAO.getbyEmail(shop.getEmail());
		List<CartLine> lst = cartDAO.list(cart.getCartid());
		cart.setGrandTotal(this.getGrandTotal(lst));
		cart.setCartLines(lst.size());
		cartDAO.updateCart(cart);
		return "redirect:/shopingcart";
	}

	private int getGrandTotal(List<CartLine> lst) {
		int grand_total = 0;
		for (CartLine obj : lst) {
			grand_total += obj.getTotal();
		}
		return grand_total;
	}




}
