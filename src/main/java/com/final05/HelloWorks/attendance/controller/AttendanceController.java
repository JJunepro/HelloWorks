package com.final05.HelloWorks.attendance.controller;


import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.attendance.model.dao.AttendanceDAO;
import com.final05.HelloWorks.attendance.model.service.AttendanceService;
import com.final05.HelloWorks.attendance.model.vo.Attendance;

@Controller
@RequestMapping("/work/")
public class AttendanceController {
	
	@Autowired
	private AttendanceDAO attDAO;
		
	@Autowired
	private AttendanceService attService;
	
/*	@RequestMapping(value = "workOn", method = RequestMethod.GET)
	public ModelAndView showAtt(ModelAndView mv) {
		Attendance attvo = new Attendance();
		List<Schedule> list = new ArrayList<Schedule>();
		try {
			list = AttendanceService.showSchedule(svo);
			mv.addObject("list", list);
		}catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("work/work");
		return mv;
	}
*/
	
	@GetMapping("workOn")
	public String U_ID(Principal principal, HttpSession session, Model model) {
    		// 시큐리티에서 emp_id를 Name으로 받아놓음
		String username = principal.getName();
		
        	// 위에서 id = work_day로 지정해준 sql 값을 가져와 모델에 담아준다.
		model.addAttribute("work_day", attService.workDay(username));
        
        	// 제대로 emp_id가 넘어왔는지 보기 위해서 한번 찍어보기
		System.out.println(username);
        
		return "home";
	}
    
}