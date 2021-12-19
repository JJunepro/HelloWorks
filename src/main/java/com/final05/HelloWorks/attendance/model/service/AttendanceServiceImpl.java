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

	public int workOnn(Attendance vo) throws Exception{
		return attdao.workOnn(vo);
	}
	
	public int workOff(Attendance vo) throws Exception {
		return attdao.workOff(vo);
	}
	
	public List<Attendance> work() throws Exception{
		return attdao.work();
	}
	public Attendance workTime(String uid) throws Exception{
		return attdao.workTime(uid);
	}
	public String workDay(String uid) {
		return attdao.workDay(uid);
	}
	
	public int workDelete(String uid) {
		return attdao.workDelete(uid);
	}
}
