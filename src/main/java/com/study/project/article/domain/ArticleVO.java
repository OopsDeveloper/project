package com.study.project.article.domain;

public class ArticleVO {

    private int meetNo;
    
    private String joinId;

    private int meetCount;
    
    private char meetLevel;
    
    private String meetName;

    private String meetGroupName;

    private String meetRegistrationDate;
    
    private String meetJibunAddress;
    
	private String meetDetail;
	
	private String meetCategoryCode;
	
	private String meetPhone;
	
	private String meetStudyTime;
	
	private String meetDel;

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

	public int getMeetCount() {
		return meetCount;
	}

	public void setMeetCount(int meetCount) {
		this.meetCount = meetCount;
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

	public String getMeetGroupName() {
		return meetGroupName;
	}

	public void setMeetGroupName(String meetGroupName) {
		this.meetGroupName = meetGroupName;
	}

	public String getMeetRegistrationDate() {
		return meetRegistrationDate;
	}

	public void setMeetRegistrationDate(String meetRegistrationDate) {
		this.meetRegistrationDate = meetRegistrationDate;
	}

	public String getMeetJibunAddress() {
		return meetJibunAddress;
	}

	public void setMeetJibunAddress(String meetJibunAddress) {
		this.meetJibunAddress = meetJibunAddress;
	}

	public String getMeetDetail() {
		return meetDetail;
	}

	public void setMeetDetail(String meetDetail) {
		this.meetDetail = meetDetail;
	}

	public String getMeetCategoryCode() {
		return meetCategoryCode;
	}

	public void setMeetCategoryCode(String meetCategoryCode) {
		this.meetCategoryCode = meetCategoryCode;
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

	@Override
	public String toString() {
		return "ArticleVO [meetNo=" + meetNo + ", joinId=" + joinId + ", meetCount=" + meetCount + ", meetLevel="
				+ meetLevel + ", meetName=" + meetName + ", meetGroupName=" + meetGroupName + ", meetRegistrationDate="
				+ meetRegistrationDate + ", meetJibunAddress=" + meetJibunAddress + ", meetDetail=" + meetDetail
				+ ", meetCategoryCode=" + meetCategoryCode + ", meetPhone=" + meetPhone + ", meetStudyTime="
				+ meetStudyTime + ", meetDel=" + meetDel + "]";
	}
	



	
	//end
//  private Date regDate;
//
//  private int viewCnt;

    
	

   
}