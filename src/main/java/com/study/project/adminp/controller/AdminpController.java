package com.study.project.adminp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.project.adminp.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminpController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/adminp", method = RequestMethod.GET)
	public void adminp(Model model) throws Exception {
		model.addAttribute("study", adminService.getStudy());
		model.addAttribute("join", adminService.getJoin());
	}
}
