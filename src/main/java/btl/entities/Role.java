package btl.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Role")
public class Role {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "Name")
	private String name;
	
	@OneToMany(mappedBy = "role")
	private Set<Account_roles> roleAccount;
	
	public Role() {
		// TODO Auto-generated constructor stub
	}

	public Role(Long id, String name, Set<Account_roles> roleAccount) {
		super();
		this.id = id;
		this.name = name;
		this.roleAccount = roleAccount;
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

	public Set<Account_roles> getRoleAccount() {
		return roleAccount;
	}

	public void setRoleAccount(Set<Account_roles> roleAccount) {
		this.roleAccount = roleAccount;
	}
	
	
}
