package com.study.project.notice.service;

import java.util.List;

import com.study.project.notice.domain.NoticeVO;

public interface NoticeService {
	List<NoticeVO> getList() throws Exception;
	NoticeVO get(int bno) throws Exception;
	int regist(NoticeVO vo) throws Exception;
}
