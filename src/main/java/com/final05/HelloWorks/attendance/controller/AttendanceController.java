package com.final05.HelloWorks.attendance.controller;


import java.security.Principal;
import java.util.List;

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
import com.final05.HelloWorks.member.model.vo.Member;

@Controller
@RequestMapping("/work")
public class AttendanceController {
	
	@Autowired
	private AttendanceDAO attDAO;
		
	@Autowired
	private AttendanceService attService;
	
	@GetMapping("")
	public String work(Principal principal, HttpSession session, Model model) {
		//TODO: Principal
		Member ssMember = (Member)session.getAttribute("memberinfo");
		if(ssMember == null) {
			return "redirect:/login";
		}
		Attendance vo = new Attendance();
		vo.setoCode(ssMember.getoCode());
		vo.setUid(ssMember.getUid());
		
		List<Attendance> volist = null;
		try {
			volist = attService.work(vo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("work_day", volist);

		System.out.println(volist);
        
		return "work";
	}
	
	
    
	@GetMapping("/workOn")
	public String workOn(Principal principal, HttpSession session, Model model) {
		
		Member ssMember = (Member)session.getAttribute("memberinfo");
		if(ssMember == null) {
			return "redirect:/login";
		}
		Attendance vo = new Attendance();
		vo.setoCode(ssMember.getoCode());
		vo.setUid(ssMember.getUid());
		int result = 0;
		try {
			result = attService.workOn(vo);
		}catch (Exception e) {
			e.printStackTrace();
			return "redirect:/";
			
		}
		model.addAttribute("work_on", result);
		
        	// 제대로 넘어왔는지 보기 위해서 한번 찍어보기
		System.out.println(result);
        
		return "home";
	}
}