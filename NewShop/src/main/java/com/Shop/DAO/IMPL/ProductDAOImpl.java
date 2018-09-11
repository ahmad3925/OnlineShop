package com.Shop.DAO.IMPL;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Shop.DAO.ProductDAO;
import com.Shop.model.Product;
import com.Shop.model.Shop;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().save(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteProduct(int prodid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleProduct(prodid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public Product getSingleProduct(int prodid) {
		try {

			return sessionFactory.getCurrentSession().get(Product.class, prodid);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getAllProduct() {
		try {
			return sessionFactory.getCurrentSession().createQuery("From Product").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	
	}
}
