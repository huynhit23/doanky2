package btl.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import btl.dao.DaoAll;
import btl.entities.Cart;

public class CartDaoImpl implements DaoAll<Cart> {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Cart> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cart findByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(Cart op) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	
}
