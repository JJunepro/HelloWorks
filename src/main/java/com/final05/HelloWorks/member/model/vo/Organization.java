package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Organization {
	private int oCode;	// 부서 코드
	private String oName;	// 부서이름
	private String oStart;  // 부서생성일	
	private String oEnd;  // 부서폐쇄일
	private String oUse;  // 부서사용여부
	
	public Organization() {}

	public Organization(int oCode, String oName, String oStart, String oEnd, String oUse) {
		super();
		this.oCode = oCode;
		this.oName = oName;
		this.oStart = oStart;
		this.oEnd = oEnd;
		this.oUse = oUse;
	}

	@Override
	public String toString() {
		return "Organization [oCode=" + oCode + ", oName=" + oName + ", oStart=" + oStart + ", oEnd=" + oEnd + ", oUse="
				+ oUse + "]";
	}

	public int getoCode() {
		return oCode;
	}

	public void setoCode(int oCode) {
		this.oCode = oCode;
	}

	public String getoName() {
		return oName;
	}

	public void setoName(String oName) {
		this.oName = oName;
	}

	public String getoStart() {
		return oStart;
	}

	public void setoStart(String oStart) {
		this.oStart = oStart;
	}

	public String getoEnd() {
		return oEnd;
	}

	public void setoEnd(String oEnd) {
		this.oEnd = oEnd;
	}

	public String getoUse() {
		return oUse;
	}

	public void setoUse(String oUse) {
		this.oUse = oUse;
	}

	
	
	
	
}
