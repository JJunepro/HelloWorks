package com.final05.HelloWorks.schedule.model.serivce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.schedule.model.dao.ScheduleDao;
import com.final05.HelloWorks.schedule.model.vo.Schedule;

@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	private ScheduleDao scheduleDao;
	
	public void addEvent(Schedule s) {
		scheduleDao.addEvent(s);
	}
}
