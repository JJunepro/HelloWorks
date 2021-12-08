package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Prize {
	
	private String uid;   // 아이디
	private String pCrape;  // 포상명
	private String pInstitution;  // 포상기관
	private String pDate;  // 포상일
	
	public Prize() {}

	public Prize(String uid, String pCrape, String pInstitution, String pDate) {
		super();
		this.uid = uid;
		this.pCrape = pCrape;
		this.pInstitution = pInstitution;
		this.pDate = pDate;
	}

	@Override
	public String toString() {
		return "Prize [uid=" + uid + ", pCrape=" + pCrape + ", pInstitution=" + pInstitution + ", pDate=" + pDate + "]";
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getpCrape() {
		return pCrape;
	}

	public void setpCrape(String pCrape) {
		this.pCrape = pCrape;
	}

	public String getpInstitution() {
		return pInstitution;
	}

	public void setpInstitution(String pInstitution) {
		this.pInstitution = pInstitution;
	}

	public String getpDate() {
		return pDate;
	}

	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	

	
	
	


}
