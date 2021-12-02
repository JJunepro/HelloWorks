package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Certificate {
	private String uid;	// 아이디
	private String ceName;	// 자격증명
	private String ceIssuer;	// 발행기관
	private String ceDate;	// 취득일
	
	public Certificate() {}
	
	public Certificate(String uid, String ceName, String ceIssuer, String ceDate) {
		super();
		this.uid = uid;
		this.ceName = ceName;
		this.ceIssuer = ceIssuer;
		this.ceDate = ceDate;
	}

	@Override
	public String toString() {
		return "Certificate [uid=" + uid + ", ceName=" + ceName + ", ceIssuer=" + ceIssuer + ", ceDate=" + ceDate + "]";
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getCeName() {
		return ceName;
	}

	public void setCeName(String ceName) {
		this.ceName = ceName;
	}

	public String getCeIssuer() {
		return ceIssuer;
	}

	public void setCeIssuer(String ceIssuer) {
		this.ceIssuer = ceIssuer;
	}

	public String getCeDate() {
		return ceDate;
	}

	public void setCeDate(String ceDate) {
		this.ceDate = ceDate;
	}
	

}
