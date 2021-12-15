package com.final05.HelloWorks.reserve.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Metting {
//	METTING_CODE	NUMBER	NOT NULL,
//	METTING_NAME	VARCHAR2(50)	NOT NULL,
//	METTING_PERSON	NUMBER	NOT NULL,
//	METTING_CONTENT	VARCHAR2(100)	NULL,
	
	private int mettingCode;
	private String mettingName;
	private int mettingPerson;
	private String mettingContent;
	
	@Override
	public String toString() {
		return "Metting [mettingCode=" + mettingCode + ", mettingName=" + mettingName + ", mettingPerson="
				+ mettingPerson + ", mettingContent=" + mettingContent + "]";
	}
	
	public int getMettingCode() {
		return mettingCode;
	}
	public void setMettingCode(int mettingCode) {
		this.mettingCode = mettingCode;
	}
	public String getMettingName() {
		return mettingName;
	}
	public void setMettingName(String mettingName) {
		this.mettingName = mettingName;
	}
	public int getMettingPerson() {
		return mettingPerson;
	}
	public void setMettingPerson(int mettingPerson) {
		this.mettingPerson = mettingPerson;
	}
	public String getMettingContent() {
		return mettingContent;
	}
	public void setMettingContent(String mettingContent) {
		this.mettingContent = mettingContent;
	}
	
	
}
