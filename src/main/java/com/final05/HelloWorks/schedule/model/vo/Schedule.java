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
	private String title;
	private String scheduleMemo;
	private String start;
	private String end;
	private String color;
	private boolean allDay = false;
	
	
	@Override
	public String toString() {
		return "Schedule [scheduleNum=" + scheduleNum + ", uid=" + uid + ", title=" + title + ", scheduleMemo="
				+ scheduleMemo + ", start=" + start + ", end=" + end + ", color=" + color + ", allDay=" + allDay + "]";
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getScheduleMemo() {
		return scheduleMemo;
	}
	public void setScheduleMemo(String scheduleMemo) {
		this.scheduleMemo = scheduleMemo;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public boolean isAllDay() {
		return allDay;
	}
	public void setAllDay(boolean allDay) {
		this.allDay = allDay;
	}
	

	
	
}
	