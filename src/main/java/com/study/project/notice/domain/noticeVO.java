package com.study.project.notice.domain;

import java.util.Date;

public class noticeVO {
	
	private String noticeCommentContent;
	private Date noticeCommentDate;
	private String noticeCommentWriter;
	private Date noticeDate;
	private int noticeHit;
	private String noticeName;
	
	
	@Override
	public String toString() {
		return "noticeVO [noticeCommentContent=" + noticeCommentContent + ", noticeCommentDate=" + noticeCommentDate
				+ ", noticeCommentWriter=" + noticeCommentWriter + ", noticeDate=" + noticeDate + ", noticeHit="
				+ noticeHit + ", noticeName=" + noticeName + "]";
	}
	
	public String getNoticeCommentContent() {
		return noticeCommentContent;
	}
	public void setNoticeCommentContent(String noticeCommentContent) {
		this.noticeCommentContent = noticeCommentContent;
	}
	public Date getNoticeCommentDate() {
		return noticeCommentDate;
	}
	public void setNoticeCommentDate(Date noticeCommentDate) {
		this.noticeCommentDate = noticeCommentDate;
	}
	public String getNoticeCommentWriter() {
		return noticeCommentWriter;
	}
	public void setNoticeCommentWriter(String noticeCommentWriter) {
		this.noticeCommentWriter = noticeCommentWriter;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public int getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(int noticeHit) {
		this.noticeHit = noticeHit;
	}
	public String getNoticeName() {
		return noticeName;
	}
	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}
	
	
	
}
