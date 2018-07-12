package com.ShopFront.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Shop.DAO.CartDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.DAO.ShopDAO;
import com.Shop.model.Cart;
import com.Shop.model.Product;
import com.Shop.model.Shop;

@Controller
public class HomeController {

	@Autowired
	ShopDAO shopDAO;

	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	Cart cart;
	
	@Autowired
	ProductDAO productDAO;
	
	
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping(value="/prodReg",method=RequestMethod.GET)
	public String callDemo(Model model) {
		model.addAttribute("product", new Product());
		return "prodReg";
	}
	
	@RequestMapping(value="/prodReg",method=RequestMethod.POST)
	public String doPostUplod(@ModelAttribute("product")Product product) {
		if(product.getFile()!=null) {
			if(product.getFile().isEmpty())
			return "redirect:/prodReg";
		}
		try {
			Path path=Paths.get("C:\\Users\\Ahmad Hussain\\eclipse-workspace\\ShopFront\\src\\main\\webapp\\assets\\Image");
			Files.write(path, product.getFile().getBytes());
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/";
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
		
		System.out.println("Cart id------>"+cart.getCartid());
		cart.setEmail(shop.getEmail());
		cartDAO.addCart(cart);
		shopDAO.addUser(shop);
		return "index";
	}

	@RequestMapping("/ViewProduct")
	public String ViewProducts(Model model) {
		
		
		model.addAttribute("prodlist", productDAO.getAllProduct());
		
		return "ViewProduct";
	}
	
	@RequestMapping("viewProduct/{prodid}")
	public String ViewSingleProduct(@PathVariable("prodid")int prodid,Model model) {
		
		
		model.addAttribute("product", productDAO.getSingleProduct(prodid));
		
		return "SingleProduct";
	}
	
	
	
	

	@RequestMapping("/Login")
	public String Login(Model model) {

		return "Login";
	}

	@RequestMapping("/contact")
	public String contact(Model model) {

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
		{
			model.addAttribute("newShop", obj);
			return "EditStudent";
		}
	}

	@RequestMapping(value = "/updateStud", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("student") Shop Shop, Model model) {
		shopDAO.updateUser(Shop);
		return "redirect:/ShowAll";
	}

	@RequestMapping(value = "/DeleteStudent/{userid}")
	public String goToDel(@PathVariable("userid") int userid, Model model) {
		shopDAO.deleteUser(userid);
		return "redirect:/ShowAll";
	}
	
}
