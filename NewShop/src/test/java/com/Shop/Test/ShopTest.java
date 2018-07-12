package com.Shop.Test;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Shop.DAO.ShopDAO;
import com.Shop.model.Shop;



public class ShopTest {

	private static AnnotationConfigApplicationContext context=null;
	private static ShopDAO ShopDAO=null;
	
	@BeforeClass
    public static void setUpBeforeClass() throws Exception{
		context =new AnnotationConfigApplicationContext();
		context.scan("com.Shop");
		context.refresh();
		ShopDAO=(ShopDAO)context.getBean("ShopDAO");
	}
@Ignore	
	@Test
	public void testAddUser() {
	 Shop shop= new Shop();
	 shop.setPassword("12345");
	 shop.setEmail("ah3925@gmail.com");
	 shop.setName("Ahmad");
	 shop.setMobile("8235132719");
	 shop.setAddress("Lucknow");

	 
	 assertTrue("Cannot save the value please check code!", ShopDAO.addUser(shop));
	}
	

	@Test
	public void testUpdateUser() {
		Shop shop= ShopDAO.getSingleUser(7);
		shop.setEmail("salim112@gmail.com");
		assertTrue("Cannot save the value please check code!", ShopDAO.updateUser(shop));

	}
@Ignore
	@Test
	public void testDeleteUser() {
	
		boolean Shop= ShopDAO.deleteUser(2);
		
		//assertTrue("Cannot save the value please check code!", ShopDAO.DeleteShop(Shop);
	}

	@Test
	public void testGetSingleUser() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetAllUser() {
		fail("Not yet implemented");			
	}

}
