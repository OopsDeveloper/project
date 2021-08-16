package com.study.project.article.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.study.project.article.domain.ArticleVO;
import com.study.project.article.persistence.ArticleDAO;
import com.study.project.meetp.domain.CategoryVO;


@Service
public class ArticleServiceImpl implements ArticleService {

    private final ArticleDAO articleDAO;

    @Inject
    public ArticleServiceImpl(ArticleDAO articleDAO) {
        this.articleDAO = articleDAO;
    }
//tt
	/*
	 * @Override public int create(ArticleVO articleVO) throws Exception {
	 * articleDAO.create(articleVO); return articleVO.getArticleNo(); }
	 */

    @Override
    public ArticleVO read(int articleNo) throws Exception {
        return articleDAO.read(articleNo);
    }

	/*
	 * @Override public int update(ArticleVO articleVO) throws Exception { return
	 * articleDAO.update(articleVO); }
	 * 
	 * @Override public int delete(Integer articleNo) throws Exception { return
	 * articleDAO.delete(articleNo); }
	 */

    @Override
	public List<CategoryVO> category() throws Exception {
		return articleDAO.category();
	}
    
    
    @Override
    public List<ArticleVO> listAll() throws Exception {
        return articleDAO.listAll();
    }

	/*
	 * @Override public List<ArticleVO> listAll(Criteria cri) throws Exception {
	 * return articleDAO.listPaging(cri); }
	 */

	/*
	 * @Override public int getTotal(Criteria cri) throws Exception { return
	 * articleDAO.getTotalCount(cri); }
	 */
}
