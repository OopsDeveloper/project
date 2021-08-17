package com.study.project.mystudy.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.study.project.mystudy.domain.JoinStudyVO;

@Repository
public class MyStudyDAOImpl implements MyStudyDAO{
	
	private static final String NAMESPACE = "com.study.project.mappers.mystudy.mystudyMapper";
	private final SqlSession sqlSession;
	
	@Autowired
	public MyStudyDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<JoinStudyVO> getJoinStduyList(String userId) throws Exception{
		return sqlSession.selectList(NAMESPACE+".joinStudy",userId);
	}

}
