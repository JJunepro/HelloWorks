package com.final05.HelloWorks.schedule.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.schedule.model.vo.Schedule;

@Repository("scheduleDao")
public class ScheduleDao {
	@Autowired
	private SqlSession sqlSession;
	
	// 일정 추가
	public int addEvent(Schedule s) {
		return sqlSession.insert("Schedule.addEvent", s);
	}
		
}
