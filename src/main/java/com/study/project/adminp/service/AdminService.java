package com.study.project.adminp.service;

import java.util.List;

import com.study.project.adminp.domain.JoinVO;
import com.study.project.adminp.domain.StudyVO;

public interface AdminService {
	List<StudyVO> getStudy() throws Exception;
	List<JoinVO> getJoin() throws Exception;
	void studyDelete(int meetNo) throws Exception;
	void userDelete(String userId) throws Exception;
}
