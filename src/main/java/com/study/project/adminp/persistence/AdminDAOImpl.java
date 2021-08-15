package com.study.project.adminp.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.study.project.adminp.domain.StudyVO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	
	private static final String NAMESPACE = "com.study.project.mappers.admin.adminMapper";
	
	private final SqlSession sqlSession;
	
	@Autowired
	public AdminDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<StudyVO> getStudy() throws Exception{
		return sqlSession.selectList(NAMESPACE+".getStudy");
	}

}
