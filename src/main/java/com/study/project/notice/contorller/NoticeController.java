package com.study.project.notice.contorller;

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

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final Logger user = LoggerFactory.getLogger(ArticleController.class);
	private final NoticeService noticeService;
	private int page=10;
	
	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) throws Exception{
		int count = noticeService.count();
		int total = (int)(Math.ceil(((count*1.0)/10)));
		System.out.println("total:"+total);
		model.addAttribute("notice", noticeService.getList(page));
		model.addAttribute("count", count);
		if(count>=10){			
			page *= 2;
		}
		
		if(page>(total*10)) {
			page = 10;
		} 
		
		System.out.println("page"+page);
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
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGet(@RequestParam("bno")int bno, NoticeVO vo, Model model) throws Exception {
		NoticeVO user= noticeService.get(bno);
		model.addAttribute("user",user);
		
		return "/notice/modify";
	}
	
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String modifyPost(@ModelAttribute("vo") NoticeVO vo) throws Exception {
		noticeService.update(vo);
		
		return "redirect:/notice/list";
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("bno")int bno) throws Exception {
		System.out.println("bno="+bno);
		noticeService.remove(bno);
		return "redirect:/notice/list";
	}
}
