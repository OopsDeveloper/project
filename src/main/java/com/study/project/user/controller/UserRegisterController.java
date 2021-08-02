package com.study.project.user.controller;

import com.study.project.user.domain.LoginDTO;
import com.study.project.user.domain.UserVO;
import com.study.project.user.service.UserService;
import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserRegisterController {

    @Autowired
    private UserService userService;

    private static final Logger logger = LoggerFactory.getLogger(UserRegisterController.class);

    // 회원가입 페이지
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerGET() throws Exception {
        return "/user/register";
    }

    // 회원가입 처리
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerPOST(UserVO userVO, RedirectAttributes redirectAttributes, HttpServletResponse response) throws Exception {
        String hashedPw = BCrypt.hashpw(userVO.getJoinPass(), BCrypt.gensalt());
        userVO.setJoinPass(hashedPw);
        userService.register(userVO, response);
        redirectAttributes.addFlashAttribute("msg", "REGISTERED");

        return "redirect:/user/login";
    }

    // 아이디 중복 검사(AJAX)
    @RequestMapping(value = "/checkId.do", method = RequestMethod.POST)
    public void checkId(@RequestParam("joinId") String joinId, HttpServletResponse response) throws Exception{
        userService.check_id(joinId, response);
    }

    // 이메일 중복 검사(AJAX)
    @RequestMapping(value = "/checkEmail.do", method = RequestMethod.POST)
    public void checkEmail(@RequestParam("joinEmail") String joinEmail, HttpServletResponse response) throws Exception{
        userService.check_email(joinEmail, response);
    }

    // 로그인 GET
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String loginGet(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
        logger.info("get login");
        return "/user/login";
    }

    @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
    public void loginPost(LoginDTO loginDTO, HttpSession session, Model model) throws Exception {
        logger.info("post login");
        logger.info("httpSession: " + session);

        UserVO userVO = userService.login(loginDTO);
        logger.info("loginDTO: " + loginDTO);
        logger.info("userVO: " + userVO);
        logger.info("loginDTO joinId: " + loginDTO.getJoinId());

        if ( userVO == null || !BCrypt.checkpw(loginDTO.getJoinPass(), userVO.getJoinPass())) {
            return;
        }
        model.addAttribute("user", userVO);
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) throws Exception {
        logger.info("httpSession :" + session);
        session.invalidate();
        logger.info("httpSession :" + session);
        return "redirect:/";
    }

    // 아이디 찾기
    @RequestMapping(value = "/findId.do")
    public String findId() throws Exception {
        return "/user/findId";
    }

    // 아이디 찾기 POST
    @RequestMapping(value = "/findId.do", method = RequestMethod.POST)
    public String findId(HttpServletResponse response, @RequestParam("joinEmail") String joinEmail, Model model, RedirectAttributes redirectAttributes) throws Exception{
        String user = userService.find_id(response, joinEmail);
        if(user == null) {
            model.addAttribute("check", 1);
        } else {
            model.addAttribute("check", 0);
            model.addAttribute("joinId", userService.find_id(response, joinEmail));
        }
        return "/user/findId";
    }

    // 비밀번호 찾기
    @RequestMapping(value = "/findPw.do")
    public String findPw() throws Exception {
        return "/user/findPw";
    }

    // 회원 인증
    @RequestMapping(value = "/approval_email.do", method = RequestMethod.POST)
    public void approvalEmail(@ModelAttribute UserVO userVO, HttpServletResponse response) throws Exception{
        userService.approval_email(userVO, response);
    }

}