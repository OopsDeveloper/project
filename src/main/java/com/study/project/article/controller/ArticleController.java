package com.study.project.article.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.project.article.domain.MeetingVO;
import com.study.project.article.service.ArticleService;
import com.study.project.commons.paging.Criteria;
import com.study.project.commons.paging.PageMaker;
import com.study.project.user.domain.UserVO;
import com.study.project.user.service.UserService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Inject
	private ArticleService articleService;
	
	@Inject
	private UserService userService;
	
    
	private static final Logger logger = LoggerFactory.getLogger(ArticleController.class);
    
//	private int page=10;
    
    

    
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model,Criteria criteria) throws Exception { 
        
    	PageMaker pageMaker = new PageMaker();
    	
    	pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(articleService.countArticles(criteria));
    	
        model.addAttribute("articles", articleService.listAll());
        model.addAttribute("articles", articleService.listCriteria(criteria));
        model.addAttribute("pageMaker",pageMaker);
        
        //  model.addAttribute("pageMaker", new PageDTO(cri, articleService.getTotal(cri)));
        //  model.addAttribute("pageMaker", new Criteria(cri, articleService.getTotal(cri)));
        return "/article/list";
    }
    
    @RequestMapping(value = "/listCriteria", method = RequestMethod.GET)
    public String listCriteria(Model model,Criteria criteria) throws Exception { 
        logger.info("listCriteria...");
        model.addAttribute("articles", articleService.listCriteria(criteria));
        return "/article/list_criteria";
    }
    
    @RequestMapping(value = "/listPaging", method = RequestMethod.GET)
    public String listPaging(Model model,Criteria criteria) throws Exception { 
        logger.info("listPaging...");
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(articleService.countArticles(criteria));
        
        model.addAttribute("articles", articleService.listCriteria(criteria));
        model.addAttribute("pageMaker",pageMaker);
        return "/article/list_paging";
    }
    
    @RequestMapping(value = "/mystudyList", method = RequestMethod.GET)
    public String regist(MeetingVO meetVO) throws Exception {
    	 System.out.println(meetVO);
        
    	 articleService.meeting(meetVO);
    	 
    	 return "redirect:/mystudy/mystudyList";
    }


//    @RequestMapping(value="/list")
//    public ModelAndView openBoardList(Criteria cri) throws Exception {
//            
//        ModelAndView mav = new ModelAndView("/board/boardList");
//            
//        PageMaker pageMaker = new PageMaker();
//        pageMaker.setCri(cri);
//        pageMaker.setTotalCount(100);
//            
//        List<Map<String,Object>> list = ArticleService.selectArticleList(cri);
//        mav.addObject("list", list);
//        mav.addObject("pageMaker", pageMaker);
//            
//        return mav;
//            
//    }

// 이동
    // 등록 페이지 이동
//    @RequestMapping(value = "/write", method = RequestMethod.GET)
//    public String writeGET() {
//        logger.info("write GET...");
//        return "/article/register";
//    }
//int? Integer
    // 등록 처리
//    @RequestMapping(value = "/write", method = RequestMethod.POST)
//    public String writePOST(ArticleVO articleVO,
//                            RedirectAttributes redirectAttributes) throws Exception {
//        logger.info("write POST...");
//        logger.info(articleVO.toString());
//        int articleNo = articleService.create(articleVO);
//        redirectAttributes.addFlashAttribute("result", articleNo);
//        return "redirect:/article/list";
//    }

    // 조회 페이지 이동 및 모임 신청
    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public String read(@RequestParam("articleNo") int articleNo,@ModelAttribute("user")UserVO userVO,
                       Model model, HttpServletRequest request) throws Exception {
//    	@ModelAttribute("cri") Criteria cri,

        logger.info("read ...");
        
        HttpSession httpSession = request.getSession();
		model.addAttribute("user" , httpSession.getAttribute("login"));
        model.addAttribute("article", articleService.read(articleNo));
        model.addAttribute("category", articleService.category());
        return "/article/get";
    }

    

    // 수정 페이지 이동
//    @RequestMapping(value = "/modify", method = RequestMethod.GET)
//    public String modifyGET(@RequestParam("articleNo") Integer articleNo,
//                            @ModelAttribute("cri") Criteria cri,
//                            Model model) throws Exception {
//
//        logger.info("modifyGet ...");
//        model.addAttribute("article", articleService.read(articleNo));
//
//        return "/article/modify";
//    }

    // 수정 처리
//    @RequestMapping(value = "/modify", method = RequestMethod.POST)
//    public String modifyPOST(ArticleVO articleVO,
//                             @ModelAttribute("cri") Criteria cri,
//                             RedirectAttributes redirectAttributes) throws Exception {
//
//        logger.info("modifyPOST ...");
//        int count = articleService.update(articleVO);
//
//        if(count == 1) {
//            redirectAttributes.addFlashAttribute("result", "success");
//        }
//
//        redirectAttributes.addAttribute("pageNum", cri.getPageNum());
//        redirectAttributes.addAttribute("amount", cri.getAmount());
//        redirectAttributes.addAttribute("type", cri.getType());
//        redirectAttributes.addAttribute("keyword", cri.getKeyword());
//
//        return "redirect:/article/list";
//    }

    // 삭제 처리
//    @RequestMapping(value = "/remove", method = RequestMethod.POST)
//    public String remove(@RequestParam("articleNo") Integer articleNo,
//                         @ModelAttribute("cri") Criteria cri,
//                         RedirectAttributes redirectAttributes) throws Exception {
//
//        logger.info("remove ...");
//        int count = articleService.delete(articleNo);
//
//        if(count == 1) {
//            redirectAttributes.addFlashAttribute("result" , "success");
//        }
//
//        redirectAttributes.addAttribute("pageNum", cri.getPageNum());
//        redirectAttributes.addAttribute("amount", cri.getAmount());
//        redirectAttributes.addAttribute("type", cri.getType());
//        redirectAttributes.addAttribute("keyword", cri.getKeyword());
//
//        return "redirect:/article/list";
//    }

}