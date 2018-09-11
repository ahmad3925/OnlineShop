package com.Shop.DAO;

import java.util.List;

import com.Shop.model.Shop;

public interface ShopDAO {

	public boolean addUser(Shop newshop);
	public boolean updateUser(Shop newshop);
	public boolean deleteUser(int userid);

	public Shop getSingleUser(int userid);
	public List<Shop> getAllUser();
	
}
