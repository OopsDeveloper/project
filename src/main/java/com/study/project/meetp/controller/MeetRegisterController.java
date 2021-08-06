package com.study.project.meetp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.project.commons.interceptor.LoginInterceptor;
import com.study.project.meetp.domain.MeetVO;
import com.study.project.meetp.service.MeetService;

@Controller
@RequestMapping("/meet")
public class MeetRegisterController {
	
	private static final String LOGIN = "login";
    private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	private MeetService meetService;
	
	@Autowired
	public MeetRegisterController(MeetService meetService) {
		this.meetService = meetService;
	}
	
	@RequestMapping(value="/meetRegister", method = RequestMethod.GET)
	public void meetRegisterGET(HttpServletRequest request, Model model ) {
		HttpSession httpSession = request.getSession();
		model.addAttribute("user",httpSession.getAttribute(LOGIN));
	}
	
	@RequestMapping(value="/meetRegister", method = RequestMethod.POST)
	public String meetRegisterPOST(MeetVO meetVO,RedirectAttributes redirectAttributes,HttpServletResponse response) throws Exception {
		logger.debug("meetVO="+meetVO.toString());
		
		meetService.register(meetVO, response);
		
		return "redirect:/main/mainp";
	}
}
