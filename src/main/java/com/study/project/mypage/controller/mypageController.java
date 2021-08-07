package com.study.project.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mypage")
public class mypageController {

	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public String mypageGET() throws Exception{
		return "/mypage/mypage";
	}
}
