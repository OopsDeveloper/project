package com.study.project.meetp.service;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.project.meetp.domain.MeetVO;
import com.study.project.meetp.persistence.MeetDAO;

@Service
public class MeetServiceImpl implements MeetService{
	
	private final MeetDAO meetDAO;
	
	@Autowired
	public MeetServiceImpl(MeetDAO meetDAO) {
		this.meetDAO = meetDAO;
	}
	
	@Override
	public int register(MeetVO meetVO, HttpServletResponse response) throws Exception {
		
		meetDAO.register(meetVO);
		
		return 0;
	}

}
