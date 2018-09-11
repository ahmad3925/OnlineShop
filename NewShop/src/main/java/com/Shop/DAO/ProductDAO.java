package com.Shop.DAO;

import java.util.List;

import com.Shop.model.Product;
import com.Shop.model.Shop;

public interface ProductDAO {

		public boolean addProduct(Product product);
		public boolean updateProduct(Product product);
		public boolean deleteProduct(int prodid);

		public Product getSingleProduct(int prodid);
		public List<Product> getAllProduct();
		
	}