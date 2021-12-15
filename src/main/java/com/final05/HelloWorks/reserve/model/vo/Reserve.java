package com.final05.HelloWorks.reserve.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Reserve {
//	RES_NUM	VARCHAR(255)	NOT NULL,
//	METTING_CODE	NUMBER	NOT NULL,
//	U_ID	VARCHAR2(50)	NOT NULL,
//	RES_TITLE	VARCHAR2(100) NOT NULL,
//	RES_START	DATE	NOT NULL,
//	RES_END		DATE	NOT NULL,
	
	private int resNum;
	private int mettingCode;
	private String uid;
	private String resTitle;
	private String resStart;
	private String resEnd;
	
	
	
	
	@Override
	public String toString() {
		return "Reserve [resNum=" + resNum + ", mettingCode=" + mettingCode + ", uid=" + uid + ", resTitle=" + resTitle
				+ ", resStart=" + resStart + ", resEnd=" + resEnd + "]";
	}
	public int getResNum() {
		return resNum;
	}
	public void setResNum(int resNum) {
		this.resNum = resNum;
	}
	public int getMettingCode() {
		return mettingCode;
	}
	public void setMettingCode(int mettingCode) {
		this.mettingCode = mettingCode;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getResTitle() {
		return resTitle;
	}
	public void setResTitle(String resTitle) {
		this.resTitle = resTitle;
	}
	public String getResStart() {
		return resStart;
	}
	public void setResStart(String resStart) {
		this.resStart = resStart;
	}
	public String getResEnd() {
		return resEnd;
	}
	public void setResEnd(String resEnd) {
		this.resEnd = resEnd;
	}
	
	
	
	
}
