package com.study.project.meetp.persistence;

import com.study.project.meetp.domain.MeetVO;

public interface MeetDAO {
	
	void register(MeetVO meetvo) throws Exception;
}
