package com.study.project.user.service;

import com.study.project.user.domain.LoginDTO;
import com.study.project.user.domain.UserVO;
import com.study.project.user.persistence.UserDAO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@Service
public class UserServiceImpl implements UserService {

    private final UserDAO userDAO;

    @Inject
    public UserServiceImpl(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    // 회원가입 처리
    @Override
    public int register(UserVO userVO, HttpServletResponse response) throws Exception {

        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();

        if(userDAO.check_id(userVO.getJoinId()) == 1) {
            out.println("<script>");
            out.println("alert('동일한 아이디가 있습니다.');");
            out.println("history.go(-1);");
            out.println("</script>");
            out.close();
            return 0;
        }
        userDAO.register(userVO);
        return 1;
    }

    // 로그인 처리
    @Override
    public UserVO login(LoginDTO loginDTO) throws Exception {
        return userDAO.login(loginDTO);
    }

    // 아이디 중복 검사(AJAX)
    @Override
    public void check_id(String joinId, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        out.println(userDAO.check_id(joinId));
        out.close();
    }


}
