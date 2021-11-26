package com.final05.HelloWorks.schedule.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.schedule.model.vo.Schedule;

@Repository("scheduleDao")
public class ScheduleDao {
	@Autowired
	private SqlSession sqlSession;
	
	//일정 가져오기
	public List<Schedule> getEvent(Schedule svo){
		return sqlSession.selectList("Schedule.getEvent", svo);
	}
	
	//리스트
	public List<Schedule> showSchedule(Schedule svo)  {
		return sqlSession.selectList("Schedule.showSchedule");
	}
	
	
	// 일정 추가
	public void addSchedule(Schedule s) throws Exception {
		sqlSession.insert("Schedule.addSchedule", s);
	}
		
}
