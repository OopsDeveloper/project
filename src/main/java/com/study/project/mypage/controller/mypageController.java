package com.study.project.mypage.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.project.user.controller.UserRegisterController;
import com.study.project.user.domain.UserVO;
import com.study.project.user.service.UserService;

@Controller
@RequestMapping("/mypage")
public class mypageController {
	
    @Autowired
    private UserService userService;
    
    private static final Logger logger = LoggerFactory.getLogger(UserRegisterController.class);

	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public String mypageGET(Model model, UserVO userVO, HttpServletRequest request) throws Exception{
		
 		HttpSession httpSession = request.getSession();
		model.addAttribute("user" , httpSession.getAttribute("login"));
		
		return "/mypage/mypage";
	}
}
