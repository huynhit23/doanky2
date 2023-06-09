package btl.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Products")
public class Products {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "Name")
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "Category_id", referencedColumnName = "Id")
	private Categories catId;
	
	@ManyToOne
	@JoinColumn(name = "Restaurant_id", referencedColumnName = "Id")
	private Restaurant restaurantId;
	
	@Column(name = "Price")
	private Double price;
	
	@Column(name = "Sale_price")
	private Double salePrice;
	
	@Column(name = "Img")
	private String img;
	
	@Column(name = "Content")
	private String content;
	
	@Column(name = "Status")
	private Integer status;
	
	public Products() {
		// TODO Auto-generated constructor stub
	}

	

	public Products(Long id, String name, Categories catId, Restaurant restaurantId, Double price, Double salePrice,
			String img, String content, Integer status) {
		super();
		this.id = id;
		this.name = name;
		this.catId = catId;
		this.restaurantId = restaurantId;
		this.price = price;
		this.salePrice = salePrice;
		this.img = img;
		this.content = content;
		this.status = status;
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Categories getCatId() {
		return catId;
	}

	public void setCatId(Categories catId) {
		this.catId = catId;
	}

	public Restaurant getRestaurantId() {
		return restaurantId;
	}

	public void setRestaurantId(Restaurant restaurantId) {
		this.restaurantId = restaurantId;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Double salePrice) {
		this.salePrice = salePrice;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
	
}
