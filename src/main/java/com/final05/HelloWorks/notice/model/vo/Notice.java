package com.final05.HelloWorks.notice.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Notice {
//	BN_N	NUMBER	NOT NULL,
//	U_ID	VARCHAR2(50)	NOT NULL,
//	O_CODE	NUMBER	NOT NULL,
//	Image_N	NUMBER	NOT NULL,
//	BN_TITLE	VARCHAR2(500)	NOT NULL,
//	BN_CONTENT	VARCHAR2(2000)	NOT NULL,
//	BN_TIMESTAMP	DATE	NOT NULL,
//	BN_VIEW	NUMBER	NULL,
	private int noticeNo;
	private String uid;
	private String noticeTitle;
	private String noticeContent;
	private String noticeDate;
	private int noticeView;
	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", uid=" + uid + ", noticeTitle=" + noticeTitle + ", noticeContent="
				+ noticeContent + ", noticeDate=" + noticeDate + ", noticeView=" + noticeView + "]";
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}
	public int getNoticeView() {
		return noticeView;
	}
	public void setNoticeView(int noticeView) {
		this.noticeView = noticeView;
	}
	
	
	
}
