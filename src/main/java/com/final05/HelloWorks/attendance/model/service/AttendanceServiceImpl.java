package com.final05.HelloWorks.attendance.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.attendance.model.dao.AttendanceDAO;
import com.final05.HelloWorks.attendance.model.vo.Attendance;

@Service("attService")
public class AttendanceServiceImpl implements AttendanceService {

	@Autowired
	private AttendanceDAO attdao;
	
	@Override

	public int workOn(Attendance vo) throws Exception{
		return attdao.workOn(vo);
	}
	
	public int workOff(Attendance vo) throws Exception {
		return attdao.workOff(vo);
	}
	
	public List<Attendance> work(Attendance vo) throws Exception{
		return attdao.work(vo);
	}
	
	public String workDay(String uid) {
		return attdao.workDay(uid);
	}
}
