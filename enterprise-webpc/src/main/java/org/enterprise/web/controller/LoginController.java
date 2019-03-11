package org.enterprise.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * 
 * @author KHIEMTD
 *
 */
@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class LoginController {
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;

	@RequestMapping(value = { "/access-denied", "/access-denied/" })
	public String accessDeniedPage() {
		return "member/403";
	}

	@RequestMapping(value = { "/login", "/login/" })
	public String loginPage() {
		if (isNotLogged()) {
			return "/member/login";
		}
		return "redirect:/";
	}
	
	private boolean isNotLogged() {
		final Authentication authen = SecurityContextHolder.getContext().getAuthentication();
		return authenticationTrustResolver.isAnonymous(authen);
	}
}
