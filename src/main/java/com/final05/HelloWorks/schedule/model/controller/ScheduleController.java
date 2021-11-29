package com.final05.HelloWorks.schedule.model.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.GsonBuilderUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.schedule.model.serivce.ScheduleService;
import com.final05.HelloWorks.schedule.model.vo.Schedule;
import com.google.gson.Gson;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value = "schedule/addSchedule")
	public String addSchedule() {
		return "schedule/addSchedule";
	}
	
	@ResponseBody
	@RequestMapping(value = "addSchedule", method = RequestMethod.POST)
	public Map<Object, Object> addSchedule(@RequestBody Schedule s) throws Exception {
		Map<Object, Object> map = new HashMap<Object, Object>();
		scheduleService.addSchedule(s);
		return map;
	}
	
//	@RequestMapping(value="/schedule")
//	public String schedule(Model model) throws Exception {
//		model.addAttribute("showSchedule", scheduleService.showSchedule());
//		return "schedule/schedule";
//	}
	@RequestMapping(value = "/getEvent", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String getEvent(
			Schedule svo
			) {
		List<Schedule> volist = null;
		try {
			volist = scheduleService.getEvent(svo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Gson gson = new Gson();
		return gson.toJson(volist);
	}
	

	
	@RequestMapping(value = "schedule", method = RequestMethod.GET)
	public ModelAndView showSchedule(ModelAndView mv) {
		Schedule svo = new Schedule();
		List<Schedule> list = new ArrayList<Schedule>();
		try {
			list = scheduleService.showSchedule(svo);
			mv.addObject("list", list);
		}catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("schedule/schedule");
		return mv;
	}
	

}
