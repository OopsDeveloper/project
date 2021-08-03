package com.study.project.user.service;

import com.study.project.user.domain.LoginDTO;
import com.study.project.user.domain.UserVO;

import javax.servlet.http.HttpServletResponse;

public interface UserService {

    // 회원 가입 처리
    int register(UserVO userVO, HttpServletResponse response) throws Exception;

    // 로그인 처리
    UserVO login(LoginDTO loginDTO) throws Exception;

    // 아이디 중복 체크
    void check_id(String joinId, HttpServletResponse response) throws Exception;

    // Email 중복 체크
    void check_email(String joinEmail, HttpServletResponse response) throws Exception;

    String create_key() throws Exception;

    void send_mail(UserVO userVO) throws Exception;

    void approval_email(UserVO userVO, HttpServletResponse response) throws Exception;

    String find_id(HttpServletResponse response, String joinEmail) throws Exception;

    UserVO find_pw(HttpServletResponse response, UserVO userVO) throws Exception;

    void update_pw(HttpServletResponse response, UserVO userVO) throws Exception;

}
