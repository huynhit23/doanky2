package btl.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import btl.dao.DaoAll;
import btl.entities.Categories;

@Repository
public class CategoriesDaoImpl implements DaoAll<Categories>{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Categories> getAll() {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List<Categories>  list = session.createQuery("from Categories").list();
			session.getTransaction().commit();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public Categories findByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(Categories op) {
		// TODO Auto-generated method stub
		return false;
	}



}
