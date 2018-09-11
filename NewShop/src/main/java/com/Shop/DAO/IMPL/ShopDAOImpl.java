package com.Shop.DAO.IMPL;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Shop.DAO.ShopDAO;
import com.Shop.model.Shop;

@Repository("ShopDAO")
@Transactional

public class ShopDAOImpl implements ShopDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addUser(Shop newshop) {
		try {
			sessionFactory.getCurrentSession().save(newshop);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateUser(Shop newshop) {
		try {
			sessionFactory.getCurrentSession().update(newshop);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	public boolean deleteUser(int userid) {
		try {
			sessionFactory.getCurrentSession().delete(getSingleUser(userid));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public Shop getSingleUser(int userid ) {
		try {
			
			return sessionFactory.getCurrentSession().get(Shop.class,userid);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Shop> getAllUser() {
		try {
			return sessionFactory.getCurrentSession().createQuery("From Shop").list();
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	
	}
}
