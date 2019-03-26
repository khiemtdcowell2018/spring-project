package org.enterprise.web.controller;

import org.apache.log4j.Logger;
import org.enterprise.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class IndexController {

	@Autowired
	UserService userService;
	private Logger log = Logger.getLogger(IndexController.class);

	@RequestMapping(value = { "/", "", "/home" }, method = RequestMethod.GET)
	public String index(ModelMap model) {
		try {
			model.addAttribute("users", userService.getAllUsers(false));
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return "home";
	}
	
	@RequestMapping(value = {"/404", "/404/"}, method = RequestMethod.GET)
	public String notFoundPage() {
		return "/404";
	}
}
