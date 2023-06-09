package btl.entities;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomAccountDetails implements UserDetails {
	private Collection<? extends GrantedAuthority> authorities;
	private String email;
	private String password;
	private String username;
	private String phone;
	private String fullName;
	private String address;
	private Boolean gender;
	private boolean enabled;
	private boolean accountNonExpired;
	private boolean accountNonLocked;
	private boolean credentialsNonExpired;

	public CustomAccountDetails() {
		super();
// TODO Auto-generated constructor stub
	}
	
	

	public CustomAccountDetails(Collection<? extends GrantedAuthority> authorities, String email, String password,
			String username, String phone, String fullName, String address, Boolean gender, boolean enabled,
			boolean accountNonExpired, boolean accountNonLocked, boolean credentialsNonExpired) {
		super();
		this.authorities = authorities;
		this.email = email;
		this.password = password;
		this.username = username;
		this.phone = phone;
		this.fullName = fullName;
		this.address = address;
		this.gender = gender;
		this.enabled = enabled;
		this.accountNonExpired = accountNonExpired;
		this.accountNonLocked = accountNonLocked;
		this.credentialsNonExpired = credentialsNonExpired;
	}



	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}



	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getFullName() {
		return fullName;
	}



	public void setFullName(String fullName) {
		this.fullName = fullName;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public Boolean getGender() {
		return gender;
	}



	public void setGender(Boolean gender) {
		this.gender = gender;
	}



	public boolean isEnabled() {
		return enabled;
	}



	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}



	public boolean isAccountNonExpired() {
		return accountNonExpired;
	}



	public void setAccountNonExpired(boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}



	public boolean isAccountNonLocked() {
		return accountNonLocked;
	}



	public void setAccountNonLocked(boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}



	public boolean isCredentialsNonExpired() {
		return credentialsNonExpired;
	}



	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}


	

}
