package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Transfer {
	private String uid;  // 아이디
	private int oCode;	// 부서 코드
	private int uRank;	// 직급
	private String uType;	// 직원구분
	private Date uStart;	//시작일
	private Date uEnd;	// 종료일
	
	public Transfer() {}
	
	
	public Transfer(String uid, int oCode, int uRank, String uType, Date uStart, Date uEnd) {
		super();
		this.uid = uid;
		this.oCode = oCode;
		this.uRank = uRank;
		this.uType = uType;
		this.uStart = uStart;
		this.uEnd = uEnd;
	}


	@Override
	public String toString() {
		return "Transfer [uid=" + uid + ", oCode=" + oCode + ", uRank=" + uRank + ", uType=" + uType + ", uStart="
				+ uStart + ", uEnd=" + uEnd + "]";
	}
	
	
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getoCode() {
		return oCode;
	}

	public void setoCode(int oCode) {
		this.oCode = oCode;
	}

	public int getuRank() {
		return uRank;
	}

	public void setuRank(int uRank) {
		this.uRank = uRank;
	}

	public String getuType() {
		return uType;
	}

	public void setuType(String uType) {
		this.uType = uType;
	}

	public Date getuStart() {
		return uStart;
	}

	public void setuStart(Date uStart) {
		this.uStart = uStart;
	}

	public Date getuEnd() {
		return uEnd;
	}

	public void setuEnd(Date uEnd) {
		this.uEnd = uEnd;
	}

	
	
	
	
	
}
