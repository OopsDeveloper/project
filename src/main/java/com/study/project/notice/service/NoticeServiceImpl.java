package com.study.project.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.project.notice.domain.NoticeVO;
import com.study.project.notice.persistence.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public List<NoticeVO> getList() throws Exception {
		return noticeDAO.getList();
	}

}
