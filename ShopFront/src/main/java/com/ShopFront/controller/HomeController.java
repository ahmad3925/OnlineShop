package com.ShopFront.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.CategoryDAO;
import com.Shop.DAO.OrderDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.DAO.ShopDAO;
import com.Shop.model.Cart;
import com.Shop.model.CartLine;
import com.Shop.model.Order_Item;
import com.Shop.model.Order_Table;
import com.Shop.model.Product;
import com.Shop.model.Shop;

@Controller
public class HomeController {

	@Autowired
	ShopDAO shopDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	Cart cart;

	@Autowired
	CartLine cartLine;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/{prodid}")
	public String View(@PathVariable("prodid") int prodid, Model model) {

		model.addAttribute("product", productDAO.getSingleProduct(prodid));

		return "SingleProduct";
	}

	@RequestMapping("/NewFile")
	public String NewFile(Model model, HttpSession session) {
		Shop obj = (Shop) session.getAttribute("user");
		model.addAttribute("newShop", obj);
		return "NewFile";
	}

	@RequestMapping("/Register")
	public String Register(Model model) {
		model.addAttribute("Shop", new Shop());
		return "Register";
	}

	public String Register() {
		return "Register";

	}

	@RequestMapping(value = "/regStud", method = RequestMethod.POST)
	public String regStud(@ModelAttribute("Shop") Shop shop, Model model) {

		System.out.println("Cart id------>" + cart.getCartid());
		cart.setEmail(shop.getEmail());
		cartDAO.addCart(cart);
		shop.setRole("ROLE_USER");
		shop.setEnable(true);
		shopDAO.addUser(shop);
		return "index";
	}

	@RequestMapping("manageProduct/ViewProduct")
	public String ViewProduct(Model model) {

		model.addAttribute("prodlist", productDAO.getAllProduct());

		return "ViewProduct";
	}

	@RequestMapping("/ViewProduct")
	public String ViewProducts(Model model) {
		model.addAttribute("prodlist", productDAO.getAllProduct());
		return "ViewProduct";
	}

	@RequestMapping("/ViewProduct/{catid}")
	public String ViewProductsByCategory(@PathVariable("catid") int catid, Model model) {
		model.addAttribute("prodlist", productDAO.getProductByCategory(catid));
		return "ViewProduct";
	}

	@RequestMapping("viewProduct/{prodid}")
	public String ViewSingleProduct(@PathVariable("prodid") int prodid, Model model) {

		Product product = productDAO.getSingleProduct(prodid);
		model.addAttribute("product", product);
		model.addAttribute("category", categoryDAO.getSingleCategory(Integer.parseInt(product.getCategoryId())));
		return "SingleProduct";
	}

	@RequestMapping("/filter")
	public String ViewProductByPrice(@RequestParam("min") double min, @RequestParam("max") double max, Model model) {

		model.addAttribute("prodlist", productDAO.getProductByUnitPrice(min, max));
		model.addAttribute("filter", "Filter: Min" + min + " Max" + max);
		return "ViewProduct";
	}

	@RequestMapping("manageProduct/viewProduct/{prodid}")
	public String ViewSingleProducts(@PathVariable("prodid") int prodid, Model model) {

		model.addAttribute("product", productDAO.getSingleProduct(prodid));

		return "SingleProduct";
	}

	@RequestMapping("/Contact")
	public String Contact() {
		return "Contact";
	}

	@RequestMapping("/ListProduct")
	public String ListProduct(Model model) {

		return "ListProduct";
	}

	@RequestMapping("/Home")
	public String Home(Model model) {

		return "/ShopFront";
	}

	@RequestMapping("/ShowAll")
	public String ShowAll(Model model) {

		List<Shop> lst = shopDAO.getAllUser();
		model.addAttribute("listShop", lst);
		return "ShowAll";
	}

	@RequestMapping("/EditStudent/{userid}")
	public String goTOEdit(@PathVariable("userid") int userid, Model model) {

		Shop obj = shopDAO.getSingleUser(userid);
		
			model.addAttribute("newShop", obj);
			return "EditStudent";
	}

	@RequestMapping(value = "/updateStud", method = RequestMethod.POST)
	public String updateS(@RequestParam("oldPassword") String oldPassword,
			@RequestParam("newpassword") String newpassword, @ModelAttribute("student") Shop Shop, Model model,HttpSession session) {

		Shop ob = shopDAO.getSingleUser(Shop.getUserid());
		Shop.setPassword(newpassword);
		if (oldPassword.equals(ob.getPassword())) {
			shopDAO.updateUser(Shop);
			session.setAttribute("msg1", "Password has been changed successfully!");

		}
		else {
			session.setAttribute("msg1", "Wrong Password");
		}

		return "redirect:/EditStudent/" + Shop.getUserid();
	}

	@RequestMapping(value = "/DeleteStudent/{userid}")
	public String goToDel(@PathVariable("userid") int userid, Model model) {
		shopDAO.deleteUser(userid);
		return "redirect:/ShowAll";
	}

	@RequestMapping("/usershow")
	public String goTOUser(Model model, HttpSession session) {
		Shop obj = (Shop) session.getAttribute("user");
		ArrayList<String> states = new ArrayList<String>();

		states.add("Andhra Pradesh");
		states.add("Arunachal Pradesh");
		states.add("Assam");
		states.add("Bihar");
		states.add("Chhattisgarh");
		states.add("Goa");
		states.add("Gujarat");
		states.add("Haryana");
		states.add("Himachal Pradesh");
		states.add("Jammu and Kashmir");
		states.add("Jharkhand");
		states.add("Karnataka");
		states.add("Kerala");
		states.add("Madhya Pradesh");
		states.add("Maharashtra");
		states.add("Manipur");
		states.add("Meghalaya");
		states.add("Mizoram");
		states.add("Nagaland");
		states.add("Odisha");
		states.add("Punjab");
		states.add("Rajasthan");
		states.add("Sikkim");
		states.add("Tamil Nadu");
		states.add("Uttar Pradesh");
		states.add("Uttarakhand");
		states.add("West Bengal");

		model.addAttribute("states", states);
		model.addAttribute("newShop", obj);
		return "usershow";

	}

	@RequestMapping(value = "/billing", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("newShop") Shop Shop, @RequestParam("state") String state, Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		Shop user = shopDAO.getUserByEmail(email);
		if (user == null) {
			return "redirect:/login";
		}
		Shop.setState(state);
		shopDAO.updateUser(Shop);

		model.addAttribute("grandTotal", cartDAO.getbyEmail(Shop.getEmail()).getGrandTotal());
		return "payment";
	}

	@RequestMapping("/checkout")
	public String checkout(Model model, HttpSession session) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		Shop user = shopDAO.getUserByEmail(email);
		if (user == null) {
			return "redirect:/login";
		}
		Shop obj = (Shop) session.getAttribute("user");

		cart = cartDAO.getbyEmail(obj.getEmail());

		/* add order */
		Order_Table order = new Order_Table();
		order.setAddress(user.getAddress());
		order.setEmail(user.getEmail());
		order.setName(user.getName());
		order.setOrder_item(new ArrayList<Order_Item>());
		orderDAO.addOder(order);

		/* addorderItem */
		Order_Item order_Item = new Order_Item();
		List<CartLine> list = cartDAO.list(cart.getCartid());

		Order_Table orderTable = orderDAO.getOrderByEmail(user.getEmail());
		for (CartLine cartLine : list) {

			order_Item.setBuyingPrice(cartLine.getBuyingPrice());
			order_Item.setTotal(cartLine.getTotal());
			order_Item.setProduct(cartLine.getProduct());

			System.out.println("CartLine Product----------------->" + order_Item.getProduct().getProdid());

			order_Item.setOrder1(orderTable);
			order_Item.setProductCount(cartLine.getProductCount());

			orderDAO.addOrderItem(order_Item);
			cartDAO.remove(cartLine);

		}
		orderTable.setOrder_item(orderDAO.getOrderItemByOrder(orderTable));
		model.addAttribute("grandTotal", cart.getGrandTotal());
		model.addAttribute("cartList", orderTable.getOrder_item());

		cart.setGrandTotal(0);
		cart.setCartLines(0);
		session.setAttribute("size", 0);
		cartDAO.updateCart(cart);
		return "checkout";
	}

	@RequestMapping("/search")
	public String Search(@RequestParam("Keyword") String Keyword, Model model) {

		model.addAttribute("prodlist", productDAO.getAllProductKeywords(Keyword));
		return "ViewProduct";
	}

}