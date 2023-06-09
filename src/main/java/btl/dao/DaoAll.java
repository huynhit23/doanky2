package btl.dao;

import java.util.List;

import btl.entities.Products;

public interface DaoAll <T>  {
	public List<T> getAll();
	public T findByName(String username);
	public boolean insert(T op);
}
