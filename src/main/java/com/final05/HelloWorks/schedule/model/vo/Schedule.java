package com.final05.HelloWorks.schedule.model.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class Schedule {
//	SCHEDULE_NUM NUMBER	NOT NULL,
//	U_ID VARCHAR2(20) NOT NULL,
//	SCHEDULE_TITLE	VARCHAR2(200)	NOT NULL,
//	SCHEDULE_MEMO	VARCHAR2(500),
//	SCHEDULE_START VARCHAR2(50) NOT NULL,
//	SCHEDULE_END	VARCHAR2(50) NOT NULL,
//	SCHEDULE_TXTCOLOR VARCHAR2(50) NOT NULL,
//	SCHEDULE_ALLDAY VARCHAR2(1),
	private static final long serialVersionUID = 1111L;
	private int scheduleNum;
	private String uid;
	private String scheduleTitle;
	private String scheduleMemo;
	private String scheduleStart;
	private String scheduleEnd;
	private String scheduleTxtcolor;
	private boolean scheduleAllDay = false;
	
	@Override
	public String toString() {
		return "Schedule [scheduleNum=" + scheduleNum + ", uid=" + uid + ", scheduleTitle=" + scheduleTitle
				+ ", scheduleMemo=" + scheduleMemo + ", scheduleStart=" + scheduleStart + ", scheduleEnd=" + scheduleEnd
				+ ", scheduleTxtcolor=" + scheduleTxtcolor + ", scheduleAllDay=" + scheduleAllDay + "]";
	}

	public int getScheduleNum() {
		return scheduleNum;
	}

	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getScheduleTitle() {
		return scheduleTitle;
	}

	public void setScheduleTitle(String scheduleTitle) {
		this.scheduleTitle = scheduleTitle;
	}

	public String getScheduleMemo() {
		return scheduleMemo;
	}

	public void setScheduleMemo(String scheduleMemo) {
		this.scheduleMemo = scheduleMemo;
	}

	public String getScheduleStart() {
		return scheduleStart;
	}

	public void setScheduleStart(String scheduleStart) {
		this.scheduleStart = scheduleStart;
	}

	public String getScheduleEnd() {
		return scheduleEnd;
	}

	public void setScheduleEnd(String scheduleEnd) {
		this.scheduleEnd = scheduleEnd;
	}

	public String getScheduleTxtcolor() {
		return scheduleTxtcolor;
	}

	public void setScheduleTxtcolor(String scheduleTxtcolor) {
		this.scheduleTxtcolor = scheduleTxtcolor;
	}

	public boolean isScheduleAllDay() {
		return scheduleAllDay;
	}

	public void setScheduleAllDay(boolean scheduleAllDay) {
		this.scheduleAllDay = scheduleAllDay;
	}
	
	
	
}
	