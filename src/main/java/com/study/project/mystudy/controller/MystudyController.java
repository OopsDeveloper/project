package com.study.project.mystudy.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.project.mystudy.domain.TodoVO;
import com.study.project.mystudy.service.MyStudyService;
import com.study.project.user.domain.UserVO;

@Controller
@RequestMapping("/mystudy")
public class MystudyController {
	private static final String LOGIN = "login";
	
	@Inject
	private MyStudyService myStudyService;
	
	@RequestMapping(value = "/mystudyList", method = RequestMethod.GET)
	public void mystudyList(Model model,HttpServletRequest request) throws Exception {
		HttpSession httpSession = request.getSession();
		
		UserVO uservo = (UserVO)httpSession.getAttribute(LOGIN);
		model.addAttribute("join", myStudyService.getJoinStduyList(uservo.getJoinId()));
		model.addAttribute("regist", myStudyService.getRegistStduyList(uservo.getJoinId()));
	}
	
	@RequestMapping(value = "/mystudyView", method = RequestMethod.GET)
	public void mystudyView(@RequestParam("no")int no, Model model) throws Exception {
		model.addAttribute("member",myStudyService.getStudyMemberList(no));
		model.addAttribute("todoList", myStudyService.getTodoList());
		model.addAttribute("myStudyNum",no);
	}
	
	@ResponseBody
	@RequestMapping(value = "/todoRegist.todo",method = RequestMethod.POST)
	public String todoRegist(Model model, TodoVO todo) throws Exception{
		myStudyService.todoRegist(todo);
		model.addAttribute("todoList", myStudyService.getTodoList());
		return "success";
	}
}
