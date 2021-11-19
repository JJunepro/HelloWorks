package com.final05.HelloWorks.member.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.member.model.service.MemberService;
import com.final05.HelloWorks.member.model.vo.Member;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
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

    @RequestMapping(value = "login", method = RequestMethod.POST) //포스트 방식 매핑
    public String login(Member vo, HttpSession session) throws Exception {
       String viewName = "";
       logger.info("post login");
       System.out.println(vo);
       
       Member login = memberService.login(vo);
      
       System.out.println("회원 로그인 정보  -> "+ login);
    
       if(login == null) {
          session.setAttribute("result", "로그인 실패");
          viewName= "login";
       } else{
          session.setAttribute("member", vo);
          viewName= "home";
       }
       
       return viewName;
    }
    
    @RequestMapping(value = "logout")
    public ModelAndView logout(HttpSession session){
        memberService.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("home");
        mav.addObject("msg", "logout");
        return mav;
    }
 
    
}