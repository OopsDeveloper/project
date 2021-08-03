package com.study.project.user.persistence;

import com.study.project.user.domain.LoginDTO;
import com.study.project.user.domain.UserVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;

@Repository
public class UserDAOImpl implements UserDAO {

    private static final String NAMESPACE = "com.study.project.mappers.user.userMapper";

    @Autowired
    private SqlSession sqlSession;

    // 회원가입처리
    @Override
    public void register(UserVO userVO) throws Exception {
        sqlSession.insert(NAMESPACE + ".register", userVO);
    }

    @Override
    public UserVO login(LoginDTO loginDTO) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".login", loginDTO);
    }

    @Override
    public int check_id(String joinId) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".check_id", joinId);
    }

    @Override
    public int check_email(String joinEmail) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".check_email", joinEmail);
    }

    @Transactional
    public int approval_email(UserVO userVO) throws Exception {
        return sqlSession.update(NAMESPACE + ".approval_email", userVO);
    }

    @Override
    public String find_id(String joinEmail) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".find_id", joinEmail);
    }

    @Override
    public UserVO find_pw(UserVO userVO) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".find_pw", userVO);
    }

    @Override
    public void update_pw(UserVO userVO) throws Exception {
        sqlSession.update(NAMESPACE + ".update_pw", userVO);
    }

}