package com.study.project.meetp.service;

import javax.servlet.http.HttpServletResponse;

import com.study.project.meetp.domain.MeetVO;

public interface MeetService {
	
	//스터디 등록 처리
	int register(MeetVO meetVO, HttpServletResponse response) throws Exception;
}
