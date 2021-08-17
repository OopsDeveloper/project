package com.study.project.mystudy.persistence;

import java.util.List;

import com.study.project.mystudy.domain.JoinStudyVO;

public interface MyStudyDAO {
	List<JoinStudyVO> getJoinStduyList() throws Exception;
}
