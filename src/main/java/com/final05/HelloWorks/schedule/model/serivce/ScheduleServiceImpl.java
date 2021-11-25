package com.final05.HelloWorks.schedule.model.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.schedule.model.dao.ScheduleDao;
import com.final05.HelloWorks.schedule.model.vo.Schedule;

@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService{
	@Autowired
	private ScheduleDao scheduleDao;
	
	@Override
	public List<Schedule> showSchedule(Schedule svo) throws Exception{
		return scheduleDao.showSchedule(svo);
	}

	@Override
	public void addSchedule(Schedule s) throws Exception {
		scheduleDao.addSchedule(s);
		
	}
	
	
}
