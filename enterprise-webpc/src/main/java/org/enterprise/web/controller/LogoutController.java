package org.enterprise.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * 
 * @author KHIEMTD
 *
 */
@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class LogoutController {

	@Autowired
	PersistentTokenBasedRememberMeServices tokenBaseRememberService;

	@RequestMapping(value = { "/logout", "/logout/" }, method = RequestMethod.GET)
	public String doLogout(HttpServletRequest request, HttpServletResponse response) {
		Authentication onLoggedStateOject = SecurityContextHolder.getContext().getAuthentication();
		if (onLoggedStateOject != null) {
			tokenBaseRememberService.logout(request, response, onLoggedStateOject);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/login?logout";
	}
}
