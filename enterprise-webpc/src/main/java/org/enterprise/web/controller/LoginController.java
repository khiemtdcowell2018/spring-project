package org.enterprise.web.controller;

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

	@RequestMapping(value = { "/access-denied", "/access-denied/" })
	public String accessDeniedPage() {
		return "member/403";
	}

	@RequestMapping(value = { "/login", "/login/" })
	public String loginPage() {
		return "/member/login";
	}
}
