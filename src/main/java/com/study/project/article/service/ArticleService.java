package com.study.project.article.service;

import java.util.List;

import com.study.project.article.domain.ArticleVO;
import com.study.project.meetp.domain.CategoryVO;

public interface ArticleService {

//    int create(ArticleVO articleVO) throws Exception;

    ArticleVO read(int articleNo) throws Exception;

//    int update(ArticleVO articleVO) throws Exception;
//
//    int delete(int articleNo) throws Exception;

    List<ArticleVO> listAll() throws Exception;
    
    List<CategoryVO> category() throws Exception;
    //카테고리
//    List<ArticleVO> listAll(Criteria cri) throws Exception;
//
//    int getTotal(Criteria cri) throws Exception;

}
