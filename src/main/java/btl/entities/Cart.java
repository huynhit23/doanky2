package btl.entities;

public class Cart  {
	private Products pro;
	private Float totalPrice;
	private Integer quantity;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}

	public Cart(Products pro, Float totalPrice, Integer quantity) {
		super();
		this.pro = pro;
		this.totalPrice = totalPrice;
		this.quantity = quantity;
	}

	public Products getPro() {
		return pro;
	}

	public void setPro(Products pro) {
		this.pro = pro;
	}

	public Float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	

	
}
