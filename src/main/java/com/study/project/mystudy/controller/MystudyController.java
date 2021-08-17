package com.study.project.mystudy.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.project.mystudy.service.MyStudyService;
import com.study.project.user.domain.UserVO;

@Controller
@RequestMapping("/mystudy")
public class MystudyController {
	private static final String LOGIN = "login";
	
	@Inject
	private MyStudyService myStudyService;
	
	@RequestMapping(value = "/mystudyList", method = RequestMethod.GET)
	public void mystudyList(Model model,HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		List<UserVO> user = (List<UserVO>)httpSession.getAttribute(LOGIN);
		System.out.println(user);
	}
}
