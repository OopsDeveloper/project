package com.study.project.mainp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/main")
public class MainpController {
	
	@RequestMapping(value="/mainp", method = RequestMethod.GET)
//	@GetMapping("/mainp")
	public void mainp() {
		
	}
}
