package com.study.project.notice.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NoticeVO {
	
	private String noticeCommentContent;
	private Date noticeCommentDate;
	private String noticeCommentWriter;
	private String noticeDate;
	private int noticeHit;
	private String noticeName;
	private int noticeNo;
	
	
	@Override
	public String toString() {
		return "NoticeVO [noticeCommentContent=" + noticeCommentContent + ", noticeCommentDate=" + noticeCommentDate
				+ ", noticeCommentWriter=" + noticeCommentWriter + ", noticeDate=" + noticeDate + ", noticeHit="
				+ noticeHit + ", noticeName=" + noticeName + ", noticeNo=" + noticeNo + "]";
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
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
	public String getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(String noticeDate) {
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
