package com.study.project.mystudy.service;

import java.util.List;

import com.study.project.mystudy.domain.JoinStudyVO;

public interface MyStudyService {
	List<JoinStudyVO> getJoinStduyList() throws Exception;
}
