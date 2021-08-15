package com.study.project.adminp.domain;

import java.util.Date;

public class StudyVO{
	private int meetNo;
	private String meetName;
	private String meetDetail;
	private String meetGroupName;
	private String meetPhone;
	private String meetStudyTime;
	private String meetDel;
	private String meetRegisterDate;
	
	
	@Override
	public String toString() {
		return "StudyVO [meetNo=" + meetNo + ", meetName=" + meetName + ", meetDetail=" + meetDetail
				+ ", meetGroupName=" + meetGroupName + ", meetPhone=" + meetPhone + ", meetStudyTime=" + meetStudyTime
				+ ", meetDel=" + meetDel + ", meetRegisterDate=" + meetRegisterDate + "]";
	}
	public String getMeetRegisterDate() {
		return meetRegisterDate;
	}
	public void setMeetRegisterDate(String meetRegisterDate) {
		this.meetRegisterDate = meetRegisterDate;
	}
	
	public int getMeetNo() {
		return meetNo;
	}
	public void setMeetNo(int meetNo) {
		this.meetNo = meetNo;
	}
	public String getMeetName() {
		return meetName;
	}
	public void setMeetName(String meetName) {
		this.meetName = meetName;
	}
	public String getMeetDetail() {
		return meetDetail;
	}
	public void setMeetDetail(String meetDetail) {
		this.meetDetail = meetDetail;
	}
	public String getMeetGroupName() {
		return meetGroupName;
	}
	public void setMeetGroupName(String meetGroupName) {
		this.meetGroupName = meetGroupName;
	}
	public String getMeetPhone() {
		return meetPhone;
	}
	public void setMeetPhone(String meetPhone) {
		this.meetPhone = meetPhone;
	}
	public String getMeetStudyTime() {
		return meetStudyTime;
	}
	public void setMeetStudyTime(String meetStudyTime) {
		this.meetStudyTime = meetStudyTime;
	}
	public String getMeetDel() {
		return meetDel;
	}
	public void setMeetDel(String meetDel) {
		this.meetDel = meetDel;
	}
	
	
	
}
