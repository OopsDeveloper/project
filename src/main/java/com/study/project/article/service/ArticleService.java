package com.study.project.article.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.study.project.article.domain.ArticleVO;
import com.study.project.commons.paging.Criteria;
import com.study.project.meetp.domain.CategoryVO;

@Service
public interface ArticleService {

//    int create(ArticleVO articleVO) throws Exception;

    	ArticleVO read(int articleNo) throws Exception;

//    int update(ArticleVO articleVO) throws Exception;
//
//    int delete(int articleNo) throws Exception;

    List<ArticleVO> listAll() throws Exception;
    
    List<CategoryVO> category() throws Exception;
    
    void meeting(int meetNo, String joinId) throws Exception;
    
    List<ArticleVO> listCriteria(Criteria criteria) throws Exception;
    
    int countArticles(Criteria criteria) throws Exception;
    
    
//카테고리
//    List<ArticleVO> listAll(Criteria cri) throws Exception;
//
//    int getTotal(Criteria cri) throws Exception;

}
