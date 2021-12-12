package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component

public class Family {
	private String uid;  // 아이디
	private String fRelation;  // 관계
	private String fName;  // 이름
	private String fBirth;  // 생년월일
	private String fPhone;  // 휴대전화
	private String fJob;  // 직업
	private String fWith;  // 동거여부
	
	public Family() {}

	public Family(String uid, String fRelation, String fName, String fBirth, String fPhone, String fJob, String fWith) {
		super();
		this.uid = uid;
		this.fRelation = fRelation;
		this.fName = fName;
		this.fBirth = fBirth;
		this.fPhone = fPhone;
		this.fJob = fJob;
		this.fWith = fWith;
	}

	@Override
	public String toString() {
		return "Family [uid=" + uid + ", fRelation=" + fRelation + ", fName=" + fName + ", fBirth=" + fBirth
				+ ", fPhone=" + fPhone + ", fJob=" + fJob + ", fWith=" + fWith + "]";
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getfRelation() {
		return fRelation;
	}

	public void setfRelation(String fRelation) {
		this.fRelation = fRelation;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getfBirth() {
		return fBirth;
	}

	public void setfBirth(String fBirth) {
		this.fBirth = fBirth;
	}

	public String getfPhone() {
		return fPhone;
	}

	public void setfPhone(String fPhone) {
		this.fPhone = fPhone;
	}

	public String getfJob() {
		return fJob;
	}

	public void setfJob(String fJob) {
		this.fJob = fJob;
	}

	public String getfWith() {
		return fWith;
	}

	public void setfWith(String fWith) {
		this.fWith = fWith;
	}

	
	

	
	
	
}
