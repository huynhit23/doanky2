package btl.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import btl.dao.DaoAll;
import btl.entities.Account_roles;

@Repository
public class Account_rolesDaoImpl implements DaoAll<Account_roles> {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Account_roles> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account_roles findByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(Account_roles op) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(op);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return false;
	}

	
}
