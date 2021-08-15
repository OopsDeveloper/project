package com.study.project.mainp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/main")
public class MainpController {
	private static final String LOGIN = "login";
	
	@RequestMapping(value="/mainp", method = RequestMethod.GET)
//	@GetMapping("/mainp")
	public void mainp(Model model,HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		
		model.addAttribute("user",httpSession.getAttribute(LOGIN));
	}
}
