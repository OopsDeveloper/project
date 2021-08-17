package com.study.project.mypage.persistence;

import com.study.project.commons.attachimage.AttachImageVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDAOImpl implements MypageDAO{

    private static final String NAMESPACE = "com.study.project.mappers.mypage.mypageMapper";

    @Autowired
    private SqlSession sqlSession;

    public void img_insert(AttachImageVO attachImageVO) {
        sqlSession.insert(NAMESPACE + ".img_insert", attachImageVO);
    }
}
