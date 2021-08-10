package com.study.project.notice.contorller;

import java.text.SimpleDateFormat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.project.article.controller.ArticleController;
import com.study.project.notice.domain.NoticeVO;
import com.study.project.notice.service.NoticeService;

import oracle.jdbc.proxy.annotation.Methods;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger user = LoggerFactory.getLogger(ArticleController.class);
	private final NoticeService noticeService;
	
	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) throws Exception{
		model.addAttribute("notice", noticeService.getList());
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(@RequestParam("bno")int bno, Model model) throws Exception{		
		NoticeVO user= noticeService.get(bno);
		model.addAttribute("user",user);
		
		return "/notice/view";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String registGet() {
		return "/notice/regist";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String registPost(@ModelAttribute("vo") NoticeVO vo) throws Exception {
		noticeService.regist(vo);
		
		return "redirect:/notice/list";
	}
	
}
