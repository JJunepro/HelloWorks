package com.final05.HelloWorks.schedule.model.vo;

import java.util.Date;

public class Schedule {
//	SCHEDULE_NUM	NUMBER	NOT NULL,
//	USER_ID VARCHAR2(20) NOT NULL,
//	SCHEDULE_TITLE	VARCHAR2(200)	NOT NULL,
//	SCHEDULE_MEMO	VARCHAR2(500)	,
//	SCHEDULE_START_DATE	VARCHAR2(50) NOT NULL,
//	SCHEDULE_END_DATE	VARCHAR2(50) NOT NULL,
//	SCHEDULE_TXTCOLOR VARCHAR2(50) NOT NULL
	private static final long serialVersionUID = 1111L;
	private int scheduleNum;
	private String userId;
	private String scheduleTitle;
	private String scheduleMemo;
	private Date scheduleStartDate;
	private Date scheduleEndDate;
	private String scheduleColor;
	private String scheduleTxtcolor;
	private boolean scheduleAllDay = false;
	
	@Override
	public String toString() {
		return "Schedule [scheduleNum=" + scheduleNum + ", userId=" + userId + ", scheduleTitle=" + scheduleTitle
				+ ", scheduleMemo=" + scheduleMemo + ", scheduleStartDate=" + scheduleStartDate + ", scheduleEndDate="
				+ scheduleEndDate + ", scheduleColor=" + scheduleColor + ", scheduleTxtcolor=" + scheduleTxtcolor
				+ ", scheduleAllDay=" + scheduleAllDay + "]";
	}

	public int getScheduleNum() {
		return scheduleNum;
	}

	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public Date getScheduleStartDate() {
		return scheduleStartDate;
	}

	public void setScheduleStartDate(Date scheduleStartDate) {
		this.scheduleStartDate = scheduleStartDate;
	}

	public Date getScheduleEndDate() {
		return scheduleEndDate;
	}

	public void setScheduleEndDate(Date scheduleEndDate) {
		this.scheduleEndDate = scheduleEndDate;
	}

	public String getScheduleColor() {
		return scheduleColor;
	}

	public void setScheduleColor(String scheduleColor) {
		this.scheduleColor = scheduleColor;
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
