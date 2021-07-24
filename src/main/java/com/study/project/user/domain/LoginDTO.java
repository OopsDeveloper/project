package com.study.project.user.domain;

public class LoginDTO {
    private String joinId;
    private String joinPass;

    @Override
    public String toString() {
        return "LoginDTO{" +
                "joinId='" + joinId + '\'' +
                ", joinPass='" + joinPass + '\'' +
                '}';
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
}
