package com.study.project.meetp.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.study.project.meetp.domain.MeetVO;

@Repository
public class MeetDAOImpl implements MeetDAO{
	
	private static final String NAMESPAE = "com.study.project.mappers.meet.meetMapper";
	private final SqlSession sqlSession;
	
	@Autowired
	public MeetDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void register(MeetVO meetvo) throws Exception {
		sqlSession.insert(NAMESPAE+".register", meetvo);
	}

}
