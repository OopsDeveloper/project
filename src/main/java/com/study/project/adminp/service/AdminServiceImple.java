package com.study.project.adminp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.project.adminp.domain.JoinVO;
import com.study.project.adminp.domain.StudyVO;
import com.study.project.adminp.persistence.AdminDAO;

@Service
public class AdminServiceImple implements AdminService{

	@Autowired
	private AdminDAO admindao; 
	
	@Override
	public List<StudyVO> getStudy() throws Exception{
		return admindao.getStudy();
	}

	@Override
	public List<JoinVO> getJoin() throws Exception {
		return admindao.getJoin();
	}

	@Override
	public void studyDelete(int meetNo) throws Exception {
		admindao.studyDelete(meetNo);
	}

	@Override
	public void userDelete(String userId) throws Exception {
		admindao.userDelete(userId);
	}

}
