package btl.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import btl.dao.DaoAll;
import btl.entities.Role;

@Repository
public class RoleDaoImpl implements DaoAll<Role> {
	
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<Role> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Role findByName(String rolename) {
		Session session = sessionFactory.openSession();
		try {
			Role role = (Role) session.createQuery("from Role where name = :name")
					.setParameter("name", rolename).uniqueResult();
			return role;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public boolean insert(Role op) {
		// TODO Auto-generated method stub
		return false;
	}


}
