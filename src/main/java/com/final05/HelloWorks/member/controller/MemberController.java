package com.final05.HelloWorks.member.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.final05.HelloWorks.member.model.service.MemberService;
import com.final05.HelloWorks.member.model.vo.Family;
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
	public ModelAndView logout(HttpSession session, SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		session.invalidate();
		
		System.out.println("ssssssession : " + session);
        ModelAndView mv = new ModelAndView("redirect:/");
		return mv;
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
	
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public ModelAndView profile(ModelAndView mv, HttpSession session) {
		System.out.println("여기session:"+ session.getAttribute("memberinfo"));
		mv.setViewName("profile");
		return mv;
	}
	/*
	@RequestMapping(value = "profile2", method = RequestMethod.GET)
	public ModelAndView profile2(ModelAndView mv) {
		mv.setViewName("profile2");
		return mv;
	}
	*/
	
	 @RequestMapping(value = "profile2", method = RequestMethod.GET)
	    public String profile2(@RequestParam("uid") String uid, Model model,HttpSession session){
		 	
		 	Member meminfo=memberService.profile2(uid);
		 	System.out.println("여기"+ meminfo);
	        model.addAttribute("info", meminfo);
	        
	        System.out.println("아이디 확인 : "+uid);
	        System.out.println("정보 확인 : ");
	        logger.info("아이디 : "+uid);
	       
	        return "profile2";
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
	  
	  @RequestMapping(value = "memberAdd", method = RequestMethod.GET)
		public ModelAndView memberAdd(ModelAndView mv) {
			mv.setViewName("memberAdd");
			return mv;
		}
	  
	  @RequestMapping(value = "memberAdd", method=RequestMethod.POST)
	  public ModelAndView memberAdd(Member vo, @RequestParam("uid") String uid,@RequestParam("pwd") String pwd,@RequestParam("name") String name,
			   @RequestParam("oCode") int oCode,@RequestParam("dept") int dept,@RequestParam("birth") int birth,
			   @RequestParam("resident") int resident,@RequestParam("address") String address,
			   @RequestParam("mail") String mail,@RequestParam("phone") int phone,@RequestParam("gender") String gender,
			   @RequestParam("cPhone") int cPhone,@RequestParam("salary") int salary,
			   @RequestParam("pImage") String pImage,@RequestParam("salaryDate") String salaryDate,
	         HttpServletRequest request,HttpServletResponse response, RedirectAttributes rttr, ModelAndView mv) {
	      int result=0;
	      
	      try {
	         
	         System.out.println(result);
	         
	         vo.setName(name);
	         vo.setUid(uid);
	         vo.setPwd(pwd);
	         vo.setoCode(oCode);
	         vo.setDept(dept);
	         vo.setBirth(birth);
	         vo.setResident(resident);
	         vo.setAddress(address); 
	         vo.setMail(mail);
	         vo.setGender(gender);
	         vo.setPhone(phone);
	         vo.setcPhone(cPhone);
	         vo.setSalary(salary);
	         vo.setSalaryDate(salaryDate);
	         vo.setpImage(pImage);
	         
	         result = memberService.memberAdd(vo);
	         System.out.println(result);
	         if(result==1) {
	            String msg = "회원 정보가 등록되었습니다.";
	            rttr.addFlashAttribute("msg", msg);
	            mv.setViewName("redirect:/memberAll");
	         }else {
	            String msg = "회원 정보 등록에 실패하였습니다.";
	            rttr.addFlashAttribute("msg", msg);
	            mv.setViewName("redirect:/memberAll");
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      return mv;
	   }
	  
	  @RequestMapping(value = "memberDelete", method = RequestMethod.GET)
	  public String memberDelete(@RequestParam("uid") String uid, Model model){
	  		System.out.println("삭제 id: "+uid);
	        memberService.memberDelete(uid);
	            
	        return "redirect:/memberAll";
	            
	  } 
	  
	  //@RequestParam(value = "uid", required=false)String uid
	  
	  @RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
	  public String memberUpdate(Member vo, Model model){
	        System.out.println("업데이트 id: "+vo);
	        memberService.memberUpdate(vo);
	            
	        return "redirect:/profile2?uid="+vo.getUid();
	            
	  } 

	  @RequestMapping(value = "familyUpdate", method = RequestMethod.POST)
	  public String familyUpdate(Family fvo){
	        System.out.println("업데이트 id: "+fvo);
	        memberService.familyUpdate(fvo);
	            
	        return "redirect:/profile2?uid="+fvo.getUid();
	            
	  } 

}
	  
		
	
