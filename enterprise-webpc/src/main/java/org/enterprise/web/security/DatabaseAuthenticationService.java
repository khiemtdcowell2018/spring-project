package org.enterprise.web.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.log4j.Logger;
import org.enterprise.entity.MstRole;
import org.enterprise.entity.MstUser;
import org.enterprise.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("databaseAuthenticationService")
public class DatabaseAuthenticationService implements UserDetailsService {

	static final Logger logger = Logger.getLogger(DatabaseAuthenticationService.class);

	@Autowired
	UserService userService;

	@Override
	@Transactional(readOnly = false)
	public UserDetails loadUserByUsername(String loginId) throws UsernameNotFoundException {
		MstUser mstUser = userService.getByLoginId(loginId);

		if (mstUser == null) {
			logger.info("User with loginId = " + loginId + " not found");
			throw new UsernameNotFoundException("Login id not found");
		} else {
			logger.info(mstUser.toString());
			User user = new User(mstUser.getLoginId(), mstUser.getLoginPassword(), true, true, true, true,
					getGrantedAuthorities(mstUser));
			return user;
		}
	}

	private Collection<? extends GrantedAuthority> getGrantedAuthorities(MstUser mstUser) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (MstRole role : mstUser.getRoles()) {
			authorities.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleType()));
		}
		logger.info(authorities);
		return authorities;
	}

}
