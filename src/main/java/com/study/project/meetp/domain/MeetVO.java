package com.study.project.meetp.domain;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

public class MeetVO {
	@NotBlank(message = "제목은 필수입니다.")
	private String meetGroupName;
	
	private String meetName;	
	private String meetDetail;
	private Date meetRegistrationDate;
	private String meetCategoryCode;
	private String meetPhone;
	private char meetLevel;
	private int meetCount;
	private int meetHit;
	private String meetPostcode;
	private String meetRoadAddress;
	private String meetJibunAddress;
	private String meetDetailAddress;
	private String meetStudyDate;
	private String meetStudyTime;
	
	@Override
	public String toString() {
		return "MeetVO [meetName=" + meetName + ", meetDetail=" + meetDetail + ", meetRegistrationDate="
				+ meetRegistrationDate + ", meetCategoryCode=" + meetCategoryCode + ", meetGroupName=" + meetGroupName
				+ ", meetPhone=" + meetPhone + ", meetLevel=" + meetLevel + ", meetCount=" + meetCount + ", meetHit="
				+ meetHit + ", meetPostcode=" + meetPostcode + ", meetRoadAddress=" + meetRoadAddress
				+ ", meetJibunAddress=" + meetJibunAddress + ", meetDetailAddress=" + meetDetailAddress
				+ ", meetStudyDate=" + meetStudyDate + ", meetStudyTime=" + meetStudyTime + "]";
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
	public Date getMeetRegistrationDate() {
		return meetRegistrationDate;
	}
	public void setMeetRegistrationDate(Date meetRegistrationDate) {
		this.meetRegistrationDate = meetRegistrationDate;
	}
	public String getMeetCategoryCode() {
		return meetCategoryCode;
	}
	public void setMeetCategoryCode(String meetCategoryCode) {
		this.meetCategoryCode = meetCategoryCode;
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
	public char getMeetLevel() {
		return meetLevel;
	}
	public void setMeetLevel(char meetLevel) {
		this.meetLevel = meetLevel;
	}
	public int getMeetCount() {
		return meetCount;
	}
	public void setMeetCount(int meetCount) {
		this.meetCount = meetCount;
	}
	public int getMeetHit() {
		return meetHit;
	}
	public void setMeetHit(int meetHit) {
		this.meetHit = meetHit;
	}
	public String getMeetPostcode() {
		return meetPostcode;
	}
	public void setMeetPostcode(String meetPostcode) {
		this.meetPostcode = meetPostcode;
	}
	public String getMeetRoadAddress() {
		return meetRoadAddress;
	}
	public void setMeetRoadAddress(String meetRoadAddress) {
		this.meetRoadAddress = meetRoadAddress;
	}
	public String getMeetJibunAddress() {
		return meetJibunAddress;
	}
	public void setMeetJibunAddress(String meetJibunAddress) {
		this.meetJibunAddress = meetJibunAddress;
	}
	public String getMeetDetailAddress() {
		return meetDetailAddress;
	}
	public void setMeetDetailAddress(String meetDetailAddress) {
		this.meetDetailAddress = meetDetailAddress;
	}
	public String getMeetStudyDate() {
		return meetStudyDate;
	}
	public void setMeetStudyDate(String meetStudyDate) {
		this.meetStudyDate = meetStudyDate;
	}
	public String getMeetStudyTime() {
		return meetStudyTime;
	}
	public void setMeetStudyTime(String meetStudyTime) {
		this.meetStudyTime = meetStudyTime;
	}
	
}
