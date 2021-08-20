package com.study.project.article.domain;

public class MeetingVO {

    private int meetNo;
    
    private String joinId;


	@Override
	public String toString() {
		return "MeetingVO [meetNo=" + meetNo + ", joinId=" + joinId + "]";
	}

	public int getMeetNo() {
		return meetNo;
	}

	public void setMeetNo(int meetNo) {
		this.meetNo = meetNo;
	}

	public String getJoinId() {
		return joinId;
	}

	public void setJoinId(String joinId) {
		this.joinId = joinId;
	}
    
    
    
	
	
}
