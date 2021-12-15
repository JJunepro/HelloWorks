package com.final05.HelloWorks.attendance.model.service;

import java.util.List;

import com.final05.HelloWorks.attendance.model.vo.Attendance;

public interface AttendanceService {
	
	public String workDay(String uid);
	
	public int workOn(Attendance vo) throws Exception;
	
	public int workOff(Attendance vo) throws Exception;
	
	public List<Attendance>work(Attendance vo) throws Exception;

}
