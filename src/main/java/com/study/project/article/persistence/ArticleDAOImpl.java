package com.study.project.article.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.study.project.article.domain.ArticleVO;
import com.study.project.commons.paging.Criteria;
import com.study.project.meetp.domain.CategoryVO;


@Repository
public class ArticleDAOImpl implements ArticleDAO {

    private static final String NAMESPACE = "com.study.project.mappers.article.articleMapper";

    private final SqlSession sqlSession;

    @Inject
    public ArticleDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }
    
  //BoardService
//    List<Map<String, Object>> selectArticleList(Criteria cri);
//     
//    //BoardServiceImpl
//    @Override
//    public List<Map<String, Object>> selectBoardList(Criteria cri) {
//        return boardDAO.selectBoardList(cri);
//    }
//     
//    //BoardDAO
//    @SuppressWarnings("unchecked")
//    public List<Map<String, Object>> selectBoardList(Criteria cri) {
//        return (List<Map<String,Object>>)selectList("board.selectBoardList", cri);
//    }

//tt
//    @Override
//    public void create(ArticleVO articleVO) throws Exception {
//        sqlSession.insert(NAMESPACE + ".create", articleVO);
//    }

    
    
    
    @Override
    public ArticleVO read(int articleNo) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".read", articleNo);
    }

//    @Override
//    public int update(ArticleVO articleVO) throws Exception {
//        return sqlSession.update(NAMESPACE + ".update", articleVO);
//    }
//
//    @Override
//    public int delete(Integer articleNo) throws Exception {
//        return sqlSession.delete(NAMESPACE + ".delete", articleNo);
//    }

    @Override
	public List<CategoryVO> category() throws Exception {
		return sqlSession.selectList(NAMESPACE+".category");
	}
    
    @Override
    public List<ArticleVO> listAll() throws Exception {
        return sqlSession.selectList(NAMESPACE + ".listAll");
    }

	@Override
	public void meeting(int meetNo, String joinId) throws Exception {
		ArticleVO vo = new ArticleVO();
		vo.setMeetNo(meetNo);
		vo.setJoinId(joinId);
		sqlSession.insert(NAMESPACE + ".meeting",vo);
		
	}

	@Override
	public List<ArticleVO> listPaging(int page) throws Exception {
		
		if (page <= 0) {
			page = 1;
		}
		
		page = (page - 1) * 10;
		
		return sqlSession.selectList(NAMESPACE + ".listPaging", page);
	}

	@Override
	public List<ArticleVO> listCriteria(Criteria criteria) throws Exception {
		
		return sqlSession.selectList(NAMESPACE + ".listCriteria", criteria);
	}

	@Override
	public int countArticles(Criteria criteria) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".countArticles", criteria);
	}
	
	

//	@Override
//	public void meeting(MettingVO mettingVO) throws Exception {
//		sqlSession.insert(NAMESPACE + ".meeting",meetNo,joinId);
//	}

//    @Override
//    public List<ArticleVO> listPaging(Criteria cri) throws Exception {
//        return sqlSession.selectList(NAMESPACE + ".listPaging", cri);
//    }
//
//    @Override
//    public int getTotalCount(Criteria cri) throws Exception {
//        return sqlSession.selectOne(NAMESPACE + ".getTotalCount",cri);
//    }


}
