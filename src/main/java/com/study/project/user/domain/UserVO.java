package com.study.project.user.domain;

import java.util.Date;

public class UserVO {

    private String joinId;
    private String joinPass;
    private String joinName;
    private String joinEmail;
    private String joinBirth;
    private Date joinRegistrationDate;
    private String joinInterestsCode;
    private String joinGender;
    private String joinPhone;
    private String joinApprovalStatus;
    private String joinApprovalKey;

    private String joinThumbImg;
    private String joinLeader;
    private String joinAdmin;
    private int joinTemp;
    private String joinDel;



    // getter, setter, toString...
    @Override
    public String toString() {
        return "UserVO{" +
                "joinId='" + joinId + '\'' +
                ", joinPass='" + joinPass + '\'' +
                ", joinName='" + joinName + '\'' +
                ", joinEmail='" + joinEmail + '\'' +
                ", joinBirth='" + joinBirth + '\'' +
                ", joinRegistrationDate=" + joinRegistrationDate +
                ", joinInterestsCode='" + joinInterestsCode + '\'' +
                ", joinGender='" + joinGender + '\'' +
                ", joinPhone='" + joinPhone + '\'' +
                ", joinApprovalStatus='" + joinApprovalStatus + '\'' +
                ", joinApprovalKey='" + joinApprovalKey + '\'' +
                ", joinThumbImg='" + joinThumbImg + '\'' +
                ", joinLeader='" + joinLeader + '\'' +
                ", joinAdmin='" + joinAdmin + '\'' +
                ", joinTemp=" + joinTemp +
                ", joinDel='" + joinDel + '\'' +
                '}';
    }

    public String getJoinLeader() {
        return joinLeader;
    }

    public void setJoinLeader(String joinLeader) {
        this.joinLeader = joinLeader;
    }

    public String getJoinAdmin() {
        return joinAdmin;
    }

    public void setJoinAdmin(String joinAdmin) {
        this.joinAdmin = joinAdmin;
    }

    public int getJoinTemp() {
        return joinTemp;
    }

    public void setJoinTemp(int joinTemp) {
        this.joinTemp = joinTemp;
    }

    public String getJoinDel() {
        return joinDel;
    }

    public void setJoinDel(String joinDel) {
        this.joinDel = joinDel;
    }

    public String getJoinThumbImg() {
        return joinThumbImg;
    }

    public void setJoinThumbImg(String joinThumbImg) {
        this.joinThumbImg = joinThumbImg;
    }

    public String getJoinApprovalStatus() {
        return joinApprovalStatus;
    }

    public void setJoinApprovalStatus(String joinApprovalStatus) {
        this.joinApprovalStatus = joinApprovalStatus;
    }

    public String getJoinApprovalKey() {
        return joinApprovalKey;
    }

    public void setJoinApprovalKey(String joinApprovalKey) {
        this.joinApprovalKey = joinApprovalKey;
    }

    public String getJoinId() {
        return joinId;
    }

    public void setJoinId(String joinId) {
        this.joinId = joinId;
    }

    public String getJoinPass() {
        return joinPass;
    }

    public void setJoinPass(String joinPass) {
        this.joinPass = joinPass;
    }

    public String getJoinName() {
        return joinName;
    }

    public void setJoinName(String joinName) {
        this.joinName = joinName;
    }

    public String getJoinEmail() {
        return joinEmail;
    }

    public void setJoinEmail(String joinEmail) {
        this.joinEmail = joinEmail;
    }

    public String getJoinBirth() {
        return joinBirth;
    }

    public void setJoinBirth(String joinBirth) {
        this.joinBirth = joinBirth;
    }

    public Date getJoinRegistrationDate() {
        return joinRegistrationDate;
    }

    public void setJoinRegistrationDate(Date joinRegistrationDate) {
        this.joinRegistrationDate = joinRegistrationDate;
    }

    public String getJoinInterestsCode() {
        return joinInterestsCode;
    }

    public void setJoinInterestsCode(String joinInterestsCode) {
        this.joinInterestsCode = joinInterestsCode;
    }

    public String getJoinGender() {
        return joinGender;
    }

    public void setJoinGender(String joinGender) {
        this.joinGender = joinGender;
    }

    public String getJoinPhone() {
        return joinPhone;
    }

    public void setJoinPhone(String joinPhone) {
        this.joinPhone = joinPhone;
    }
}