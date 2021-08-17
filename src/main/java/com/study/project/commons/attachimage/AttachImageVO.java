package com.study.project.commons.attachimage;

public class AttachImageVO {
    /* 경로 */
    private String uploadPath;

    /* uuid */
    private String uuid;

    /* 파일 이름 */
    private String fileName;

    /* Id */
    private String joinId;

    @Override
    public String toString() {
        return "AttachImageVO{" +
                "uploadPath='" + uploadPath + '\'' +
                ", uuid='" + uuid + '\'' +
                ", fileName='" + fileName + '\'' +
                ", joinId=" + joinId +
                '}';
    }

    public String getUploadPath() {
        return uploadPath;
    }

    public void setUploadPath(String uploadPath) {
        this.uploadPath = uploadPath;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getJoinId() {
        return joinId;
    }

    public void setJoinId(String joinId) {
        this.joinId = joinId;
    }
}
