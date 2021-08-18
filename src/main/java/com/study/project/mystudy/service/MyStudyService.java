package com.study.project.mystudy.service;

import java.util.List;

import com.study.project.mystudy.domain.JoinStudyVO;

public interface MyStudyService {
	List<JoinStudyVO> getJoinStduyList(String userId) throws Exception;
	List<JoinStudyVO> getRegistStduyList(String userId) throws Exception;
}
