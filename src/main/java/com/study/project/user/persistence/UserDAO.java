package com.study.project.user.persistence;

import com.study.project.user.domain.LoginDTO;
import com.study.project.user.domain.UserVO;

public interface UserDAO {

    // 회원가입 처리
    void register(UserVO userVO) throws Exception;

    UserVO login(LoginDTO loginDTO) throws Exception;

    int check_id(String joinId) throws Exception;

}