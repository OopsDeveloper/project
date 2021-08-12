package com.study.project.notice.persistence;

import java.util.List;

import com.study.project.notice.domain.NoticeVO;

public interface NoticeDAO {
	List<NoticeVO> getList() throws Exception;
	NoticeVO get(int bno) throws Exception;
	void insert(NoticeVO vo) throws Exception;
	void update(NoticeVO vo) throws Exception;
	void delete(int bno) throws Exception;
	int getListCount() throws Exception;
}
