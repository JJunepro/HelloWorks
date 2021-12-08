package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Degree {
	private String uid;  // 아이디
	private String dSchool;	// 학교명
	private String dMajor;	// 전공
	private String dDegree;	// 학위
	private String dGraduated;	// 졸업여부
	private String dStart;	// 입학일
	private String dEnd;	// 졸업일
	
	public Degree() {}

	public Degree(String uid, String dSchool, String dMajor, String dDegree, String dGraduated, String dStart,
			String dEnd) {
		super();
		this.uid = uid;
		this.dSchool = dSchool;
		this.dMajor = dMajor;
		this.dDegree = dDegree;
		this.dGraduated = dGraduated;
		this.dStart = dStart;
		this.dEnd = dEnd;
	}

	@Override
	public String toString() {
		return "Degree [uid=" + uid + ", dSchool=" + dSchool + ", dMajor=" + dMajor + ", dDegree=" + dDegree
				+ ", dGraduated=" + dGraduated + ", dStart=" + dStart + ", dEnd=" + dEnd + "]";
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getdSchool() {
		return dSchool;
	}

	public void setdSchool(String dSchool) {
		this.dSchool = dSchool;
	}

	public String getdMajor() {
		return dMajor;
	}

	public void setdMajor(String dMajor) {
		this.dMajor = dMajor;
	}

	public String getdDegree() {
		return dDegree;
	}

	public void setdDegree(String dDegree) {
		this.dDegree = dDegree;
	}

	public String getdGraduated() {
		return dGraduated;
	}

	public void setdGraduated(String dGraduated) {
		this.dGraduated = dGraduated;
	}

	public String getdStart() {
		return dStart;
	}

	public void setdStart(String dStart) {
		this.dStart = dStart;
	}

	public String getdEnd() {
		return dEnd;
	}

	public void setdEnd(String dEnd) {
		this.dEnd = dEnd;
	}

	
	
	
	

	
	
	
	
	
}
