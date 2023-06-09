package btl.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import btl.dao.DaoAll;
import btl.entities.Account;
import btl.entities.Account_roles;
import btl.entities.CustomAccountDetails;

@Service
public class CustomAccountDetailService implements UserDetailsService {
	@Autowired
	private DaoAll<Account> generalDAO;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		return loadUser(username);
	}

	private UserDetails loadUser(String username) {
		Account ac = generalDAO.findByName(username);
		if (ac == null) {
			return null;
		}
		Collection<GrantedAuthority> grantedAuthoritySet = new HashSet<>();
		Set<Account_roles> roles = ac.getAcRoles();
		for (Account_roles account_Role : roles) {
			grantedAuthoritySet.add(new SimpleGrantedAuthority(account_Role.getRole().getName()));
		}
		return new CustomAccountDetails(grantedAuthoritySet, ac.getEmail(), ac.getPassword(), ac.getUserName(),
				ac.getPhone(), ac.getFullName(), ac.getAddress(), ac.getGender(), ac.getEnabled(),
				true, true, true);
	}
	
	
}
