package com.final05.HelloWorks.schedule.model.serivce;

import java.util.List;

import com.final05.HelloWorks.schedule.model.vo.Schedule;

public interface ScheduleService {
	
	public List<Schedule> getEvent(Schedule svo) throws Exception;
	
	public List<Schedule> showSchedule(Schedule svo) throws Exception;
	
	public void addSchedule(Schedule s) throws Exception;
}
