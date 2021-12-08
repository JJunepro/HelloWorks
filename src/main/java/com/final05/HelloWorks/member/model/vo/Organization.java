package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Organization {
	private int oCode;	// 부서 코드
	private String oName;	// 부서이름
	private int oLevel;  // 부서레벨	
	
	public Organization() {}

	public Organization(int oCode, String oName, int oLevel) {
		super();
		this.oCode = oCode;
		this.oName = oName;
		this.oLevel = oLevel;
	}

	@Override
	public String toString() {
		return "Organization [oCode=" + oCode + ", oName=" + oName + ", oLevel=" + oLevel + "]";
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

	public int getoLevel() {
		return oLevel;
	}

	public void setoLevel(int oLevel) {
		this.oLevel = oLevel;
	}
	
	
	
	
}
