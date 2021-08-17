package com.study.project.mystudy.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.study.project.mystudy.domain.JoinStudyVO;
import com.study.project.mystudy.persistence.MyStudyDAO;

@Service
public class MyStudyServiceImpl implements MyStudyService{
	
	@Inject
	private MyStudyDAO myStudyDao;
	
	@Override
	public List<JoinStudyVO> getJoinStduyList(String userId) throws Exception {
		return myStudyDao.getJoinStduyList(userId);
	}
	
}
