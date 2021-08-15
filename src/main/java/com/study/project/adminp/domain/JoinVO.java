package com.study.project.adminp.domain;

public class JoinVO {
	private String joinId;
	private String joinEmail;
	private String joinName;
	private String joinDel;
	private String joinPhone;
	private String joinBirth;
	private char joinGender;
	private int joinTemp;
	
	@Override
	public String toString() {
		return "JoinVO [joinId=" + joinId + ", joinEmail=" + joinEmail + ", joinName=" + joinName + ", joinDel="
				+ joinDel + ", joinPhone=" + joinPhone + ", joinBirth=" + joinBirth + ", joinGender=" + joinGender
				+ ", joinTemp=" + joinTemp + "]";
	}
	
	public String getJoinId() {
		return joinId;
	}
	public void setJoinId(String joinId) {
		this.joinId = joinId;
	}
	public String getJoinEmail() {
		return joinEmail;
	}
	public void setJoinEmail(String joinEmail) {
		this.joinEmail = joinEmail;
	}
	public String getJoinName() {
		return joinName;
	}
	public void setJoinName(String joinName) {
		this.joinName = joinName;
	}
	public String getJoinDel() {
		return joinDel;
	}
	public void setJoinDel(String joinDel) {
		this.joinDel = joinDel;
	}
	public String getJoinPhone() {
		return joinPhone;
	}
	public void setJoinPhone(String joinPhone) {
		this.joinPhone = joinPhone;
	}
	public char getJoinGender() {
		return joinGender;
	}
	public void setJoinGender(char joinGender) {
		this.joinGender = joinGender;
	}
	public int getJoinTemp() {
		return joinTemp;
	}
	public void setJoinTemp(int joinTemp) {
		this.joinTemp = joinTemp;
	}
	public String getJoinBirth() {
		return joinBirth;
	}
	public void setJoinBirth(String joinBirth) {
		this.joinBirth = joinBirth;
	}
	
}
