package btl.entities;

import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Account")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private Long id;
	@Column(name = "Username")
	@NotEmpty(message = "User Name is not empty!")
	private String userName;
	@Column(name = "Email")
	@NotEmpty(message = "Email is not empty!")
	private String email;
	@Column(name = "Phone")
	@NotEmpty(message = "Phone is not empty!")
	private String phone;
	@Column(name = "Password")
	@NotEmpty(message = "Password is not empty!")
	private String password;
	@Column(name = "Fullname")
	@NotEmpty(message = "fullName is not empty!")
	private String fullName;
	@Column(name = "Gender")
	@NotNull(message = "Gender is not Null")
	private Boolean gender;
	@Column(name = "Address")
	@NotEmpty(message = "Address is not empty!")
	private String address;
	
	@Column(name = "Enabled", columnDefinition="boolean  default 'true'")
	private Boolean enabled;
	
	@OneToMany(mappedBy = "acId")
	private List<Orders> orderAccount;
	
	@OneToMany(mappedBy = "ac", fetch = FetchType.EAGER)
	private Set<Account_roles> acRoles;
	
	
	public Account() {
		// TODO Auto-generated constructor stub
	}


	public Account(Long id, @NotEmpty(message = "User Name is not empty!") String userName,
			@NotEmpty(message = "Email is not empty!") String email,
			@NotEmpty(message = "Phone is not empty!") String phone,
			@NotEmpty(message = "Password is not empty!") String password,
			@NotEmpty(message = "fullName is not empty!") String fullName,
			@NotNull(message = "Gender is not Null") Boolean gender,
			@NotEmpty(message = "Address is not empty!") String address, Boolean enabled, List<Orders> orderAccount,
			Set<Account_roles> acRoles) {
		super();
		this.id = id;
		this.userName = userName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.fullName = fullName;
		this.gender = gender;
		this.address = address;
		this.enabled = enabled;
		this.orderAccount = orderAccount;
		this.acRoles = acRoles;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public Boolean getGender() {
		return gender;
	}


	public void setGender(Boolean gender) {
		this.gender = gender;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public Boolean getEnabled() {
		return enabled;
	}


	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}


	public List<Orders> getOrderAccount() {
		return orderAccount;
	}


	public void setOrderAccount(List<Orders> orderAccount) {
		this.orderAccount = orderAccount;
	}


	public Set<Account_roles> getAcRoles() {
		return acRoles;
	}


	public void setAcRoles(Set<Account_roles> acRoles) {
		this.acRoles = acRoles;
	}

	
	
}
