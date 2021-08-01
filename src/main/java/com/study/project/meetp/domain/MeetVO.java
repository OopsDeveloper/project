package com.study.project.meetp.domain;

import java.util.Date;

public class MeetVO {
	private String meetCategoryCode;
	private int meetCount;
	private String meetDetail;
	private String meetGroupName;
	private int meetHit;
	private char meetLevel;
	private String meetName;
	private String meetPhone;
	private Date meetRegistrationDate;
		
	@Override
	public String toString() {
		return "MeetVO [meetCategoryCode=" + meetCategoryCode + ", meetCount=" + meetCount + ", meetDetail="
				+ meetDetail + ", meetGroupName=" + meetGroupName + ", meetHit=" + meetHit + ", meetLevel=" + meetLevel
				+ ", meetName=" + meetName + ", meetPhone=" + meetPhone + ", meetRegistrationDate="
				+ meetRegistrationDate + "]";
	}
	public String getMeetCategoryCode() {
		return meetCategoryCode;
	}
	public void setMeetCategoryCode(String meetCategoryCode) {
		this.meetCategoryCode = meetCategoryCode;
	}
	public int getMeetCount() {
		return meetCount;
	}
	public void setMeetCount(int meetCount) {
		this.meetCount = meetCount;
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
	public int getMeetHit() {
		return meetHit;
	}
	public void setMeetHit(int meetHit) {
		this.meetHit = meetHit;
	}
	public char getMeetLevel() {
		return meetLevel;
	}
	public void setMeetLevel(char meetLevel) {
		this.meetLevel = meetLevel;
	}
	public String getMeetName() {
		return meetName;
	}
	public void setMeetName(String meetName) {
		this.meetName = meetName;
	}
	public String getMeetPhone() {
		return meetPhone;
	}
	public void setMeetPhone(String meetPhone) {
		this.meetPhone = meetPhone;
	}
	public Date getMeetRegistrationDate() {
		return meetRegistrationDate;
	}
	public void setMeetRegistrationDate(Date meetRegistrationDate) {
		this.meetRegistrationDate = meetRegistrationDate;
	}
}
