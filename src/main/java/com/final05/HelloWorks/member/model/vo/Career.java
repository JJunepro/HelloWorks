package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Career {
	private String uid;	// 아이디
	private String cRectal;  // 직장명
	private String cTask;  // 업무
	private String cStart;  // 시작일
	private String cEnd;  // 종료일
	
	public Career() {}

	public Career(String uid, String cRectal, String cTask, String cStart, String cEnd) {
		super();
		this.uid = uid;
		this.cRectal = cRectal;
		this.cTask = cTask;
		this.cStart = cStart;
		this.cEnd = cEnd;
	}

	@Override
	public String toString() {
		return "Career [uid=" + uid + ", cRectal=" + cRectal + ", cTask=" + cTask + ", cStart=" + cStart + ", cEnd="
				+ cEnd + "]";
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getcRectal() {
		return cRectal;
	}

	public void setcRectal(String cRectal) {
		this.cRectal = cRectal;
	}

	public String getcTask() {
		return cTask;
	}

	public void setcTask(String cTask) {
		this.cTask = cTask;
	}

	public String getcStart() {
		return cStart;
	}

	public void setcStart(String cStart) {
		this.cStart = cStart;
	}

	public String getcEnd() {
		return cEnd;
	}

	public void setcEnd(String cEnd) {
		this.cEnd = cEnd;
	}

	
	
	
	
	


}
