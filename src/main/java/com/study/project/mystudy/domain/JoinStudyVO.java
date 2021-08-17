package com.study.project.mystudy.domain;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

public class JoinStudyVO {

	private String meetName;	
	private String meetDetail;
	private Date meetRegistrationDate;
	private String meetCategoryCode;
	private String meetGroupName;
	private String meetPhone;
	private char meetLevel;
	private int meetCount;
	private int meetHit;
	private String meetStudyTime;
	private String meetPostcode;
	private String meetRoadAddress;
	private String meetJibunAddress;
	private String meetDetailAddress;
	private int meetNo;
	private String meetDel;
	
	
	@Override
	public String toString() {
		return "JoinStudyVO [meetName=" + meetName + ", meetDetail=" + meetDetail + ", meetRegistrationDate="
				+ meetRegistrationDate + ", meetCategoryCode=" + meetCategoryCode + ", meetGroupName=" + meetGroupName
				+ ", meetPhone=" + meetPhone + ", meetLevel=" + meetLevel + ", meetCount=" + meetCount + ", meetHit="
				+ meetHit + ", meetStudyTime=" + meetStudyTime + ", meetPostcode=" + meetPostcode + ", meetRoadAddress="
				+ meetRoadAddress + ", meetJibunAddress=" + meetJibunAddress + ", meetDetailAddress="
				+ meetDetailAddress + ", meetNo=" + meetNo + ", meetDel=" + meetDel + "]";
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
	public String getMeetStudyTime() {
		return meetStudyTime;
	}
	public void setMeetStudyTime(String meetStudyTime) {
		this.meetStudyTime = meetStudyTime;
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
	public int getMeetNo() {
		return meetNo;
	}
	public void setMeetNo(int meetNo) {
		this.meetNo = meetNo;
	}
	public String getMeetDel() {
		return meetDel;
	}
	public void setMeetDel(String meetDel) {
		this.meetDel = meetDel;
	}
	
	
	
	
}
