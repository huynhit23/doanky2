package btl.entities;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Restaurant")
public class Restaurant {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name = "Name")
	private String name;
	
	@Column(name = "Address")
	private String address;
	
	@OneToMany(mappedBy = "restaurantId", fetch = FetchType.EAGER)
	private List<Products> listProduct;
	
	public Restaurant() {
		// TODO Auto-generated constructor stub
	}

	public Restaurant(Integer id, String name, String address, List<Products> listProduct) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.listProduct = listProduct;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<Products> getListProduct() {
		return listProduct;
	}

	public void setListProduct(List<Products> listProduct) {
		this.listProduct = listProduct;
	}
	
	
}
