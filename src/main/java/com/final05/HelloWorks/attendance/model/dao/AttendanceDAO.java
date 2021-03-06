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

	// 직원근태 리스트
	public List<Attendance> showAtt(Attendance attvo) throws Exception {
		return sqlSession.selectList("Attendance.showAtt");
	}
	// 출근시간
	public int workOnn(Attendance vo) {
		return sqlSession.insert("Attendance.workOnn", vo);
	}

	// 퇴근시간
	public int workOff(Attendance vo) {
		return sqlSession.update("Attendance.workOff", vo);
	}

	// 직원근태 리스트
	public List<Attendance> work() {
		return sqlSession.selectList("Attendance.AttAll");
	}
	public Attendance workTime(String uid) {
		return sqlSession.selectOne("Attendance.workTime",uid);
	}

	public String workDay(String uid) {
		return null;
	}
	 public int workDelete(String uid) {
	     return sqlSession.delete("Attendance.workDelete", uid);
	  }
	/*
	 * //직원근태 목록 public List<> select();
	 * 
	 * //to-do 직원 출근 시간 public String select();
	 * 
	 * //to-do 직원 퇴근시간 public String select();
	 */

}
