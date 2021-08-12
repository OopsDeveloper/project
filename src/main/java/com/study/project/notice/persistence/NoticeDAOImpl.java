package com.study.project.notice.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.study.project.notice.domain.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{
	private static final String NAMESPACE = "com.study.project.mappers.notice.noticeMapper";
	
	private final SqlSession sqlSession;
	
	@Autowired
	public NoticeDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<NoticeVO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+".getList");
	}

	@Override
	public NoticeVO get(int bno) throws Exception {
		return sqlSession.selectOne(NAMESPACE+".get",bno);
	}

	@Override
	public void insert(NoticeVO vo) throws Exception {
		sqlSession.insert(NAMESPACE+".insert",vo);
	}

	@Override
	public void update(NoticeVO vo) throws Exception {
		sqlSession.update(NAMESPACE+".update",vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete(NAMESPACE+".delete",bno);
	}

	@Override
	public int getListCount() throws Exception {
		int count = sqlSession.selectOne(NAMESPACE+".getListCount");
		return count;
	}
}
