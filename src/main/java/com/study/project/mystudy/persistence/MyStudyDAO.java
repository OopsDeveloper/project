package com.study.project.mystudy.persistence;

import java.util.List;

import com.study.project.mystudy.domain.JoinStudyVO;

public interface MyStudyDAO {
	List<JoinStudyVO> getJoinStduyList(String userId) throws Exception;
	List<JoinStudyVO> getRegistStduyList(String userId) throws Exception;
}
