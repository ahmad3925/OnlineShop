package com.Shop.DAO;

import java.util.List;

import com.Shop.model.Category;
import com.Shop.model.Shop;

public interface CategoryDAO {
	public boolean addCategory(Category category);
	public boolean updateCategory(Category category);
	public boolean deleteCategory(int categoryId);

	public Category getSingleCategory(int categoryId);
	public List<Category> getAllCategory();
	
}