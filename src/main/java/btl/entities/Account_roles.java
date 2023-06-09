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
@Table(name = "Account_roles")
public class Account_roles {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private Long id;
	@ManyToOne
	@JoinColumn(name = "UserId", referencedColumnName = "Id")
	private Account ac;
	@ManyToOne
	@JoinColumn(name = "RoleId", referencedColumnName = "Id")
	private Role role;
	
	
	public Account_roles() {
		// TODO Auto-generated constructor stub
	}


	public Account_roles(Long id, Account ac, Role role) {
		super();
		this.id = id;
		this.ac = ac;
		this.role = role;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Account getAc() {
		return ac;
	}


	public void setAc(Account ac) {
		this.ac = ac;
	}


	public Role getRole() {
		return role;
	}


	public void setRole(Role role) {
		this.role = role;
	}
	
	
	
}
