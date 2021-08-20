package com.study.project.mystudy.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.study.project.mystudy.domain.JoinStudyVO;
import com.study.project.mystudy.domain.StudyMemberVO;
import com.study.project.mystudy.domain.TodoVO;
import com.study.project.mystudy.persistence.MyStudyDAO;

@Service
public class MyStudyServiceImpl implements MyStudyService{
	
	@Inject
	private MyStudyDAO myStudyDao;
	
	@Override
	public List<JoinStudyVO> getJoinStduyList(String userId) throws Exception {
		return myStudyDao.getJoinStduyList(userId);
	}

	@Override
	public List<JoinStudyVO> getRegistStduyList(String userId) throws Exception {
		return myStudyDao.getRegistStduyList(userId);
	}

	@Override
	public List<StudyMemberVO> getStudyMemberList(int no) throws Exception {
		return myStudyDao.getStudyMemberList(no);
	}

	@Override
	public int todoRegist(TodoVO todo) throws Exception {
		return myStudyDao.todoRegist(todo);
	}

	@Override
	public List<TodoVO> getTodoList() throws Exception {
		return myStudyDao.getTodoList();
	}
	
}
