package com.final05.HelloWorks.attendance.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Attendance {
	
//	U_ID	VARCHAR2(20)	NOT NULL,
//	O_CODE	NUMBER	NOT NULL,
//	work_on	TIMESTAMP	NULL,
//	work_off	TIMESTAMP	NULL

	private String uid;
	private int oCode;
	private String workOn;
	private String workOff;
	
	public Attendance() {}
	
	@Override
	public String toString() {
		return "Attendance [ uid=" + uid + ", Ocode=" +  oCode + ", wokrOn=" + workOn + ", workOff=" + workOff + "]";
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
	public String getWorkOn() {
		return workOn;
	}
	public void setWorkOn(String workOn) {
		this.workOn = workOn;
	}
	public String getWorkOff() {
		return workOff;
	}
	public void setWorkOff(String workOff) {
		this.workOff = workOff;
	}
}
