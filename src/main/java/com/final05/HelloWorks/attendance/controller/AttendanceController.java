package com.final05.HelloWorks.attendance.controller;


import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.final05.HelloWorks.attendance.model.dao.AttendanceDAO;
import com.final05.HelloWorks.attendance.model.service.AttendanceService;
import com.final05.HelloWorks.attendance.model.vo.Attendance;
import com.final05.HelloWorks.member.model.vo.Member;
import com.final05.HelloWorks.member.model.vo.Organization;

@Controller
public class AttendanceController {
	
	@Autowired
	private AttendanceDAO attDAO;
		
	@Autowired
	private AttendanceService attService;
	
//	@GetMapping("")
//	public String work(Principal principal, HttpSession session, Model model) {
//		//TODO: Principal
//		Member ssMember = (Member)session.getAttribute("memberinfo");
//		if(ssMember == null) {
//			return "redirect:/login";
//		}
//		Attendance vo = new Attendance();
//		vo.setoCode(ssMember.getoCode());
//		vo.setUid(ssMember.getUid());
//		
//		List<Attendance> volist = null;
//		try {
//			volist = attService.work(vo);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		model.addAttribute("work_day", volist);
//
//		System.out.println(volist);
//        
//		return "work";
//	}
//	
	
    
//	@RequestMapping(value="workOn", method=RequestMethod.GET)
//	public String workOn(Principal principal, HttpSession session, Model model) {
//		
//		Member ssMember = (Member)session.getAttribute("memberinfo");
//		if(ssMember == null) {
//			return "redirect:/login";
//		}
//		Attendance vo = new Attendance();
//		vo.setoCode(ssMember.getoCode());
//		vo.setUid(ssMember.getUid());
//		int result = 0;
//		try {
//			result = attService.workOn(vo);
//		}catch (Exception e) {
//			e.printStackTrace();
//			return "redirect:/";
//			
//		}
//		model.addAttribute("work_on", result);
//		
//        	// 제대로 넘어왔는지 보기 위해서 한번 찍어보기
//		System.out.println("vovovo"+vo);
//        
//		return "home";
//	}
	
	  @RequestMapping(value = "workOn", method=RequestMethod.GET)
	  public ModelAndView workOn(Attendance vo,  
		  @RequestParam(value="uid" , required=false) String uid,
		  @RequestParam(value="oCode", required=false) int oCode,
			   HttpServletRequest request,HttpSession session,HttpServletResponse response, RedirectAttributes rttr, ModelAndView mv) {
	      
	     
	      try {
	    	  int result=0;
	         result =  attService.workOnn(vo);
	         System.out.println("result"+result);
	         System.out.println("list3"+vo);
	         if(result==1) {
	        	// Attendance att = attService.workTime(uid);
		       //  session.setAttribute("memberinfo", att);
	        	// System.out.println("list33"+att);
	        	// mv.addObject("list3",att);
	        	 mv.setViewName("home");
	         }else {
	            mv.setViewName("home");
	         }	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }	      
	      return mv; 
	   }
	
	
	@RequestMapping(value="workOff", method=RequestMethod.GET)
	 public ModelAndView workOff(Attendance vo,  
			  @RequestParam(value="uid" , required=false) String uid,
			  HttpSession session,HttpServletRequest request,HttpServletResponse response, RedirectAttributes rttr, ModelAndView mv) {
			  Member ssMember = (Member)session.getAttribute("memberinfo");
		      System.out.println("off"+vo);
		      try {
		         attService.workOff(vo);
		         mv.setViewName("home");
		                 
		      } catch (Exception e) {
		         e.printStackTrace();
		      }	      
		      return mv;
		   }
	
	  // 회원 정보 삭제
	  @RequestMapping(value = "workDelete", method = RequestMethod.GET)
	  public String workDelete(@RequestParam("uid") String uid, Model model){
	  		System.out.println("삭제 id: "+uid);
	  		try {
	  			
				attService.workDelete(uid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        return "home";	         
	  } 
}