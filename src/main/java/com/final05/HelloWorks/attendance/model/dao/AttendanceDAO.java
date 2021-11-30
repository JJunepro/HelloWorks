package com.final05.HelloWorks.attendance.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.attendance.model.vo.Attendance;

@Repository("attDao")
public class AttendanceDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public Attendance workOn(Attendance vo) {
		return sqlSession.selectOne("Attendance.workOn", vo);
	}
	
	public List<Attendance>work(Attendance vo){
		return sqlSession.selectList("Attendance.AttAll", vo);
	}


	/*
	//직원근태 목록
	public List<> select();
	
	//to-do 직원 출근 시간
	public String select();
	
	//to-do 직원 퇴근시간
	public String select();
	*/
	
}
