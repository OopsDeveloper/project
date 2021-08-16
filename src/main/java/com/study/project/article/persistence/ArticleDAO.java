package com.study.project.article.persistence;

import java.util.List;

import com.study.project.article.domain.ArticleVO;
import com.study.project.meetp.domain.CategoryVO;

public interface ArticleDAO {

//    void create(ArticleVO articleVO) throws Exception;

    ArticleVO read(int articleNo) throws Exception;

//    int update(ArticleVO articleVO) throws Exception;
//
//    int delete(Integer articleNo) throws Exception;
    List<CategoryVO> category() throws Exception;
    List<ArticleVO> listAll() throws Exception;

//    List<ArticleVO> listPaging(Criteria cri) throws Exception;
//
//    int getTotalCount(Criteria cri) throws Exception;

}
