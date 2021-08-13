package com.study.project.meetp.persistence;

import java.util.List;

import com.study.project.meetp.domain.CategoryVO;
import com.study.project.meetp.domain.MeetVO;

public interface MeetDAO {
	
	void register(MeetVO meetvo) throws Exception;
	List<CategoryVO> category() throws Exception;
}
