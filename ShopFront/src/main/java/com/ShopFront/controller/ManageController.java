package com.ShopFront.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Shop.DAO.CategoryDAO;
import com.Shop.DAO.ProductDAO;
import com.Shop.DAO.SupplierDAO;
import com.Shop.model.Category;
import com.Shop.model.Product;
import com.Shop.model.Supplier;

import util.FileUploadUtility;

@Controller
@RequestMapping("/manageProduct")
public class ManageController {

	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/prodReg")
	public String reg1(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		model.addAttribute("prodlist", productDAO.getAllProduct());
		return "prodReg";

	}
	
	
	@RequestMapping(value = "/prodReg", method = RequestMethod.POST)
	public String doPostUplod(@ModelAttribute("product") Product product, Model model,
			@RequestParam(name = "file1", required = false) MultipartFile file1, HttpServletRequest request,
			@RequestParam(name = "file2", required = false) MultipartFile file2,
			@RequestParam(name = "file3", required = false) MultipartFile file3,
			@RequestParam(name = "file4", required = false) MultipartFile file4) {

		MultipartFile files[] = { file1, file2, file3, file4 };	
		if (files[0].isEmpty()) {
			FileUploadUtility.uploadNoImage(request, product.getCode());
		} else {
			FileUploadUtility.uploadFile(request, files, product.getCode());
		}

		productDAO.addProduct(product);
		return "redirect:/prodReg";
	}


	@RequestMapping(value = "/regProd", method = RequestMethod.POST)
	public String regP(@ModelAttribute("product") Product product, Model model,
			@RequestParam("file1") MultipartFile file1
			,@RequestParam("file2") MultipartFile file2,
			@RequestParam("file3") MultipartFile file3,
			@RequestParam("file4") MultipartFile file4
			, HttpServletRequest request) {

		MultipartFile files[]= {file1,file2,file3,file4};
		
		if (files[0].isEmpty()) {
			FileUploadUtility.uploadNoImage(request, product.getCode());
		}

		else {
			FileUploadUtility.uploadFile(request, files, product.getCode());
		}

		productDAO.addProduct(product);
		return "redirect:/";

	}

	@RequestMapping("/updateProduct/{prodid}")
	public String goToEdit(@PathVariable("prodid") int prodid, Model model) {
		Product obj = productDAO.getSingleProduct(prodid);
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		model.addAttribute("product", obj);
		return "updateProd";
	}

	@RequestMapping(value = "/updateProd", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("product") Product product, Model model,
			@RequestParam("file1") MultipartFile file1
			,@RequestParam("file2") MultipartFile file2,
			@RequestParam("file3") MultipartFile file3,
			@RequestParam("file4") MultipartFile file4
			, HttpServletRequest request) {

		MultipartFile files[]= {file1,file2,file3,file4};
		
		if (files[0].isEmpty()) {
			FileUploadUtility.uploadNoImage(request, product.getCode());
		}

		else {
			product.setCode(new Product().getCode());
			productDAO.updateProduct(product);
			FileUploadUtility.uploadFile(request, files, product.getCode());
		}		
		return "redirect:/manageProduct/prodReg";
	}

	@RequestMapping(value = "/deleteProd/{prodid}")
	public String goToDel(@PathVariable("prodid") int prodid, Model model) {
		productDAO.deleteProduct(prodid);
		return "redirect:/manageProduct/prodReg";
	}

	@RequestMapping("/SupplierReg")
	public String reg2(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("suplist", supplierDAO.getAllSupplier());
		return "SupplierReg";

	}

	@RequestMapping(value = "/regSupp", method = RequestMethod.POST)
	public String regS(@ModelAttribute("supplier") Supplier supplier, Model model) {
		supplierDAO.addSupplier(supplier);
		return "redirect:/manageProduct/SupplierReg";
	}
	
	@RequestMapping("/supEdit/{supplierid}")
	public String goToEdit2(@PathVariable("supplierid") int supplierid, Model model) {
		Supplier obj = supplierDAO.getSingleSupplier(supplierid);
		model.addAttribute("supplier", obj);
		return "updateSup";
	}
	
	@RequestMapping(value = "/updateSup", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("supplier") Supplier supplier, Model model) {
		supplierDAO.updateSupplier(supplier);
		return "redirect:/manageProduct/SupplierReg";
	}
	@RequestMapping(value = "/deleteSup/{supplierid}")
	public String goToDel2(@PathVariable("supplierid") int supplierid, Model model) {
		supplierDAO.deleteSupplier(supplierid);
		return "redirect:/manageProduct/SupplierReg";
	}
	
	@RequestMapping("/CatReg")
	public String reg3(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		return "CatReg";

	}

	@RequestMapping(value = "/catReg", method = RequestMethod.POST)
	public String regC(@ModelAttribute("category") Category category, Model model) {
		categoryDAO.addCategory(category);
		return "redirect:/manageProduct/CatReg";
	}

	@RequestMapping("/catEdit/{categoryId}")
	public String goToEdit1(@PathVariable("categoryId") int categoryId, Model model) {
		Category obj = categoryDAO.getSingleCategory(categoryId);
		model.addAttribute("category", obj);
		return "updateCat";
	}

	@RequestMapping(value = "/updateCat", method = RequestMethod.POST)
	public String updateC(@ModelAttribute("category") Category category, Model model) {
		categoryDAO.updateCategory(category);
		return "redirect:/manageProduct/CatReg";
	}

	@RequestMapping(value = "/deleteCat/{categoryId}")
	public String goToDel1(@PathVariable("categoryId") int categoryId, Model model) {
		categoryDAO.deleteCategory(categoryId);
		return "redirect:/manageProduct/CatReg";
	}

	

	

	
}
