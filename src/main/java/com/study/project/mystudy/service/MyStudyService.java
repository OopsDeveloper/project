package com.study.project.mystudy.service;

import java.util.List;

import com.study.project.mystudy.domain.JoinStudyVO;
import com.study.project.mystudy.domain.StudyMemberVO;

public interface MyStudyService {
	List<JoinStudyVO> getJoinStduyList(String userId) throws Exception;
	List<JoinStudyVO> getRegistStduyList(String userId) throws Exception;
	List<StudyMemberVO> getStudyMemberList(int no) throws Exception;
}
