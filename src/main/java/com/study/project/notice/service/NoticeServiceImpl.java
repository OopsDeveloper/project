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

	@Override
	public NoticeVO get(int bno) throws Exception {
		return noticeDAO.get(bno);
	}

	@Override
	public int regist(NoticeVO vo) throws Exception {
		noticeDAO.insert(vo);
		return 0;
	}

	@Override
	public int update(NoticeVO vo) throws Exception {
		noticeDAO.update(vo);
		return 0;
	}

	@Override
	public int remove(int bno) throws Exception {
		noticeDAO.delete(bno);
		return 0;
	}

	@Override
	public int count() throws Exception {
		return noticeDAO.getListCount();
	}

	
}
