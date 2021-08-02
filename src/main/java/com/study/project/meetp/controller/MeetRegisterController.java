package com.study.project.meetp.controller;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.project.meetp.domain.MeetVO;
import com.study.project.meetp.service.MeetService;

@Controller
@RequestMapping("/meet")
public class MeetRegisterController {
	@Autowired
	private MeetService meetService;
	
	private static final Logger logger = LoggerFactory.getLogger(MeetRegisterController.class);
	
	@RequestMapping(value="/meetRegister", method = RequestMethod.GET)
	public void meetRegisterGET() {
		
	}
	
	@RequestMapping(value="/meetRegister", method = RequestMethod.POST)
	public String meetRegisterPOST(MeetVO meetVO,RedirectAttributes redirectAttributes,HttpServletResponse response) throws Exception {
		meetService.register(meetVO, response);
		
		return "redirect:/user/login";
	}
}
