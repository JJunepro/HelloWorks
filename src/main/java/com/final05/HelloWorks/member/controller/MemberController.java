package com.final05.HelloWorks.member.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.member.model.service.MemberService;
import com.final05.HelloWorks.member.model.vo.Member;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
@SessionAttributes("memberinfo")
public class MemberController {
	// 로깅을 위한 변수
	@Autowired
	private MemberService memberService;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("login");
		return mv;
	}

	@RequestMapping(value = "login", method = RequestMethod.POST) // 포스트 방식 매핑
	public String login(Member vo, HttpSession session) throws Exception {
		String viewName = "";
		logger.info("post login");

		Member login = memberService.login(vo);

		System.out.println("회원 로그인 정보  -> " + login);

		if (login == null) {
			session.setAttribute("result", "로그인 실패");
			viewName = "login";
		} else {
			session.setAttribute("memberinfo", login);
			viewName = "home";
		}
		System.out.println("session : " + session);
		System.out.println("login : " + login);
		return viewName;
	}

	@RequestMapping(value = "logout")
	public ModelAndView logout(HttpSession session) {
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		mav.addObject("msg", "logout");
		return mav;
	}

	@RequestMapping(value = "idSearch", method = RequestMethod.GET)
	public ModelAndView idSearch(ModelAndView mv) {
		mv.setViewName("idSearch");
		return mv;
	}

	@RequestMapping(value = "pwdSearch", method = RequestMethod.GET)
	public ModelAndView pwdSearch(ModelAndView mv) {
		mv.setViewName("pwdSearch");
		return mv;
	}

	@RequestMapping(value = "idSearch", method = RequestMethod.POST) // 포스트 방식 매핑
	public String idSearch(Member vo, Model model) {
		String viewName = "";
		logger.info("idSearch");
		Member member = memberService.idSearch(vo);

		
			if (member == null) {
				System.out.println(member);
				model.addAttribute("check", 1);
				String msg = "존재하지 않는 회원 정보입니다.";
				model.addAttribute("msg", msg);
			} else {
				model.addAttribute("check", 0);
				String msg = member.getName() + "님의  아이디는" + member.getUid() + "입니다.";
				model.addAttribute("msg", msg);
				model.addAttribute("uid", member.getUid());
			}
		
		System.out.println(member.getUid());
		System.out.println(member.getName());
		return "idSearch";
	}

	@RequestMapping(value = "pwdSearch", method = RequestMethod.POST)
	public String pwdSearch(Member vo, Model model) {
		Member member = memberService.pwdSearch(vo);

		try {
			if (member == null) {
				model.addAttribute("check", 1);
				String msg = "존재하지 않는 회원 정보입니다.";
				model.addAttribute("msg", msg);
			} else {
				model.addAttribute("check", 0);
				String msg = member.getName() + "님의  비밀번호는" + member.getPwd() + "입니다.";
				model.addAttribute("msg", msg);
				model.addAttribute("pwd", member.getPwd());
			}
			System.out.println(member.getPwd());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "pwdSearch";
	}
/*
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public ModelAndView profile(ModelAndView mv) {
		mv.setViewName("profile");
		return mv;
	}
	*/

	 @RequestMapping("profile")
	    public String profile(String uid, Model model,HttpSession session){
	        // 회원 정보를 model에 저장
	        model.addAttribute("info", memberService.profile(session.getId()));
	        System.out.println("아이디 확인 : "+uid);
	        logger.info("아이디 : "+uid);
	        // member_view.jsp로 포워드
	        return "profile";
	    }
	
	
	  @RequestMapping(value="memberAll", method=RequestMethod.GET) 
	  public ModelAndView memberAll(ModelAndView mv) { 
		 
		  Member vo = new Member();
		  List<Member> list = new ArrayList<Member>();
		  try { 
			  list = memberService.memberAll(vo);
			  mv.addObject("list",list);
			  }catch(Exception e) {
				  e.printStackTrace(); 
				  }

	 System.out.println("d"+list);
	  mv.setViewName("memberAll");

	 return mv; 
	 }
	  
}