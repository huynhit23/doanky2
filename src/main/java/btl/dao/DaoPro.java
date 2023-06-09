package btl.dao;

import java.util.List;

import btl.entities.Products;

public interface DaoPro{
	public List<Products> getAll();
	public Products findByName(String username);
	public Products findById(Long proId);
	public List<Products> getSale();
	public List<Products> getFeatured();
	public List<Products> getNewProduct();
	public List<Products> getBestSellerList();
	public List<Products> getCatId(Integer catId);
}
