package com.final05.HelloWorks.attendance.model.service;

import java.util.List;

import com.final05.HelloWorks.attendance.model.vo.Attendance;

public interface AttendanceService {
	
	public String workDay(String uid);
	
	public int workOn(Attendance vo) throws Exception;
	
	public int workOff(Attendance vo) throws Exception;
	
	public List<Attendance> work(String uid) throws Exception;
	
	public int workDelete(String uid) throws Exception;

}
