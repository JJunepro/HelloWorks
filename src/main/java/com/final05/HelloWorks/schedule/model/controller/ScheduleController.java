package com.final05.HelloWorks.schedule.model.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.schedule.model.serivce.ScheduleService;
import com.final05.HelloWorks.schedule.model.vo.Schedule;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("/schedule")
	public String ScheduleMain() {
		return "schedule/scheduleMain";
	}
	
	@RequestMapping(value = "addEvent.do", method = RequestMethod.POST)
	public ModelAndView addEvent(Schedule s, HttpServletRequest request, ModelAndView mv) {
		System.out.println("schedule s: " + s);
		System.out.println("schedule mv: " + s);
		try {
			scheduleService.addEvent(s);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
