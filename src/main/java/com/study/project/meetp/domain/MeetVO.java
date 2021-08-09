package com.study.project.meetp.domain;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class MeetVO {
	@NotBlank(message = "제목은 필수입니다.")
	private String meetGroupName;
	
	private String meetName;	
	@NotBlank(message = "상세내용을 기재해주세요.")
	private String meetDetail;
	private Date meetRegistrationDate;
	@NotBlank(message = "카테고리를 선택해주세요.")
	private String meetCategoryCode;
	
	@NotBlank(message = "핸드폰번호를 적어주세요.")
	@Pattern(regexp = "01[0|1|6|7|8|9]-([0-9]{3,4})-([0-9]{4})", message = "010-xxxx-xxxx로 입력해주세요")
	private String meetPhone;
	
	private char meetLevel;
	
	@Min(value = 2,message = "최소2명이상 입니다.")
	private int meetCount;
	
	private int meetHit;
	@NotBlank(message = "우편번호는 필수입니다.")
	private String meetPostcode;
	@NotBlank(message = "도로명주소는 필수입니다.")
	private String meetRoadAddress;
	@NotBlank(message = "지번은 필수입니다.")
	private String meetJibunAddress;
	@NotBlank(message = "상세주소는 필수입니다.")
	private String meetDetailAddress;
	
	private String meetStudyDate;
	
	@NotBlank(message = "시간대는 필수입니다.")
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
