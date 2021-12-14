package com.final05.HelloWorks.member.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
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
import com.final05.HelloWorks.member.model.vo.Appreaisal;
import com.final05.HelloWorks.member.model.vo.Career;
import com.final05.HelloWorks.member.model.vo.Certificate;
import com.final05.HelloWorks.member.model.vo.Degree;
import com.final05.HelloWorks.member.model.vo.Family;
import com.final05.HelloWorks.member.model.vo.Member;
import com.final05.HelloWorks.member.model.vo.Organization;
import com.final05.HelloWorks.member.model.vo.Prize;
import com.final05.HelloWorks.member.model.vo.Transfer;

@Controller // 현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
@SessionAttributes("memberinfo")
public class MemberController {
	// 로깅을 위한 변수
	@Autowired
	private MemberService memberService;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	public static final int LIMIT = 10;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("login");
		return mv;
	}
	// 로그인
	@RequestMapping(value = "login", method = RequestMethod.POST) // 포스트 방식 매핑
	public String login(Member vo, HttpSession session) throws Exception {
		System.out.println("vo : " + vo);
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
	// 로그아웃
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
	// 아이디 찾기
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
	// 비밀번호 찾기
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
	// 회원 정보
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
	// 회원 정보
	 @RequestMapping(value = "profile2", method = RequestMethod.GET)
	    public String profile2(Member vo,@RequestParam("uid") String uid,@RequestParam("oCode") int oCode, Model model,HttpSession session){
		 	
		 	Member meminfo=memberService.profile2(vo);
		 	System.out.println("여기"+ meminfo);
	        model.addAttribute("info", meminfo);
	        
	        System.out.println("아이디 확인 : "+uid);
	        System.out.println("정보 확인 : "+meminfo);
	        logger.info("아이디 : "+uid);
	       
	        return "profile2";
	    }
	 
	
	
	  // 부서 검색
	  @RequestMapping(value="memberOSeach", method=RequestMethod.GET) 
	  public ModelAndView memberOSeach(@RequestParam(name = "page", defaultValue = "1") int page,@RequestParam(name = "okeyword", required = false) String okeyword,ModelAndView mv) { 
		  System.out.println("okeyword"+okeyword);
		  List<Organization> list2 = new ArrayList<Organization>();
		  try {	
				if (okeyword != null && !okeyword.equals(""))
					mv.addObject("list", memberService.memberOSeach(okeyword));
					list2 = memberService.organizationAll();
				System.out.println("mv"+mv);
				mv.addObject("list2",list2);
				mv.setViewName("memberAll");
			} catch (Exception e) {
				mv.addObject("msg", e.getMessage());
				
			}
			return mv;
		}
	  // 회원 검색
	  @RequestMapping(value="memberSeach", method=RequestMethod.GET) 
	  public ModelAndView memberSeach(@RequestParam(name = "page", defaultValue = "1") int page,@RequestParam(name = "keyword", required = false) String keyword,ModelAndView mv) { 
		  try {	
				if (keyword != null && !keyword.equals(""))
					mv.addObject("list", memberService.memberSeach(keyword));
				mv.setViewName("memberAll");
			} catch (Exception e) {
				mv.addObject("msg", e.getMessage());
				
			}
			return mv;
		}
	  // 부서 목록
	  @RequestMapping(value="organizationAll", method=RequestMethod.GET) 
	  public ModelAndView organizationAll(@RequestParam(name = "page", defaultValue = "1") int page , ModelAndView mv) { 
		  int currentPage = page;
		  // 한 페이지당 출력할 목록 갯수
		  int listCount = memberService.totalCount();
		  int maxPage = (int) ((double) listCount / LIMIT + 0.9);
		  List<Organization> list2 = new ArrayList<Organization>();
		  try { 
			  list2 = memberService.organizationAll();
			  mv.addObject("list2",list2);
			  System.out.println("list2"+list2);
		  }catch(Exception e) {
			  e.printStackTrace(); 
		  }

	  mv.setViewName("organizationAll");

	 return mv; 
	 }
	  // 회원 목록
	  @RequestMapping(value="memberAll", method=RequestMethod.GET) 
	  public ModelAndView memberAll(@RequestParam(name = "page", defaultValue = "1") int page , ModelAndView mv) { 
		  int currentPage = page;
		  // 한 페이지당 출력할 목록 갯수
		  int listCount = memberService.totalCount();
		  int maxPage = (int) ((double) listCount / LIMIT + 0.9);
		  Member vo = new Member();
		  List<Member> list = new ArrayList<Member>();
		  List<Organization> list2 = new ArrayList<Organization>();
		  try { 
			  list = memberService.memberAll(currentPage, LIMIT);
			  list2 = memberService.organizationAll();
			  mv.addObject("list",list);
			  mv.addObject("list2",list2);
			  System.out.println("list2"+list2);
		  }catch(Exception e) {
			  e.printStackTrace(); 
		  }

	 System.out.println("d"+list);
	  mv.setViewName("memberAll");

	 return mv; 
	 }
/*
	  @RequestMapping(value="memberAll", method=RequestMethod.GET) 
	  public ModelAndView memberSelect(@RequestParam(name = "page", defaultValue = "1") int page,@RequestParam(name = "keyword", required = false) String keyword,ModelAndView mv) { 
		  try {
				int currentPage = page;
				// 한 페이지당 출력할 목록 갯수
				int listCount = memberService.totalCount();
				int maxPage = (int) ((double) listCount / LIMIT + 0.9);
				if (keyword != null && !keyword.equals(""))
					mv.addObject("list", memberService.selectSearch(keyword));
				else
					mv.addObject("list", memberService.selectList(currentPage, LIMIT));
				mv.addObject("currentPage", currentPage);
				mv.addObject("maxPage", maxPage);
				mv.addObject("listCount", listCount);
				mv.setViewName("memberAll");
			} catch (Exception e) {
				mv.addObject("msg", e.getMessage());
				
			}
			return mv;
		}
	  */ 
	  @RequestMapping(value = "organizationAdd", method = RequestMethod.GET)
		public ModelAndView organizationAdd(ModelAndView mv) {
			mv.setViewName("organizationAdd");
			return mv;
		}
	  // 부서 추가
	  @RequestMapping(value = "organizationAdd", method=RequestMethod.POST)
	  public ModelAndView organizationAdd(Organization ovo,
			   HttpServletRequest request,HttpServletResponse response, RedirectAttributes rttr, ModelAndView mv) {
	      int result=0;
	      try {
	         System.out.println("vo"+ovo);
	        
	         result =  memberService.organizationAdd(ovo);
	      
	         System.out.println("result"+result);
	         if(result==1) {
	            mv.setViewName("redirect:/organizationAll");
	         }else {
	            mv.setViewName("redirect:/organizationAll");
	         }	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }	      
	      return mv;
	   }
	  
	  @RequestMapping(value = "memberAdd", method = RequestMethod.GET)
		public ModelAndView memberAdd(ModelAndView mv) {
			mv.setViewName("memberAdd");
			return mv;
		}
	  // 회원 추가
	  @RequestMapping(value = "memberAdd", method=RequestMethod.POST)
	  public ModelAndView memberAdd(Member vo,
		  @RequestParam("uid") String uid,
			   HttpServletRequest request,HttpServletResponse response, RedirectAttributes rttr, ModelAndView mv) {
	      int result=0;
	      try {
	         System.out.println("vo"+vo);
	         System.out.println("uid"+uid);
	        
	         result =  memberService.memberAdd(vo);
	      
	         System.out.println("result"+result);
	         if(result==1) {
	          //  String msg = "회원 정보가 등록되었습니다.";
	          //  rttr.addFlashAttribute("msg", msg);
	            mv.setViewName("redirect:/memberAll");
	         }else {
	          //  String msg = "회원 정보 등록에 실패하였습니다.";
	           // rttr.addFlashAttribute("msg", msg);
	            mv.setViewName("redirect:/memberAll");
	         }	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }	      
	      return mv;
	   }
	 
	  // 회원 삭제
	  @RequestMapping(value = "memberDelete", method = RequestMethod.GET)
	  public String memberDelete(@RequestParam("uid") String uid, Model model){
	  		System.out.println("삭제 id: "+uid);
	        memberService.memberDelete(uid);
	        return "redirect:/memberAll";	         
	  } 
	  // 부서 삭제
	  @RequestMapping(value = "organizationDelete", method = RequestMethod.GET)
	  public String organizationDelete(@RequestParam("uid") String oCode, Model model){
	  		System.out.println("삭제 code: "+oCode);
	        memberService.organizationDelete(oCode);
	        return "redirect:/organizationAll";	         
	  } 
	  
	  // 회원 정보 수정 
	  @RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
	  public String memberUpdate(Member vo,@RequestParam("uid") String uid,@RequestParam("oCode") int oCode, Model model){
	        System.out.println("업데이트 id: "+vo);
	        memberService.memberUpdate(vo);	            
	        return "redirect:/profile2?uid="+vo.getUid()+"&&oCode="+vo.getoCode();         
	  } 
	  // 부서 정보 수정
	  @RequestMapping(value = "organizationUpdate", method = RequestMethod.POST)
	  public String organizationUpdate(Organization ovo,Member vo){
	        System.out.println("업데이트 id: "+ovo);
	        memberService.organizationUpdate(ovo);	          
	        return "redirect:/profile2?uid="+vo.getUid()+"&&oCode="+vo.getoCode();	         
	  } 
	  // 회원의 학력 정보 수정
	  @RequestMapping(value = "degreeUpdate", method = RequestMethod.POST)
	  public String degreeUpdate(Degree dvo,Member vo){
	        System.out.println("업데이트 id: "+dvo);
	        memberService.degreeUpdate(dvo);	          
	        return "redirect:/profile2?uid="+dvo.getUid()+"&&oCode="+vo.getoCode();	          
	  } 
	  // 회원의 인사평가 정보 수정
	  @RequestMapping(value = "appreaisalUpdate", method = RequestMethod.POST)
	  public String appreaisalUpdate(Appreaisal avo,Member vo){
	        System.out.println("업데이트 id: "+avo);
	        memberService.appreaisalUpdate(avo);	          
	        return "redirect:/profile2?uid="+avo.getUid()+"&&oCode="+vo.getoCode();	          
	  } 
	  // 회원의 인사발령 정보 수정
	  @RequestMapping(value = "transferUpdate", method = RequestMethod.POST)
	  public String transferUpdate(Transfer tvo,Member vo){
		  	 System.out.println("업데이트 id: "+tvo);
	        memberService.transferUpdate(tvo);	          
	        return "redirect:/profile2?uid="+tvo.getUid()+"&&oCode="+vo.getoCode();	          
	  } 
	  
	  // 회원의 가족 정보 수정
	  @RequestMapping(value = "familyUpdate", method = RequestMethod.POST)
	  public String familyUpdate(Family[] fvo,Member vo, HttpServletRequest request){
	        System.out.println("업데이트 id: "+fvo);
//	        String[] fRelation  = request.getParameterValues("fRelation");
//	        String[] fName  = request.getParameterValues("fName");
//	        String[] fBirth  = request.getParameterValues("fBirth");
//	        String[] fPhone  = request.getParameterValues("fPhone");
//	        String[] fJob  = request.getParameterValues("fJob");
//	        String[] fWith  = request.getParameterValues("fWith");
	        
	        System.out.println("family"+fvo);
	        memberService.familyUpdate(fvo);
	        
	        return "redirect:/profile2?uid="+vo.getUid()+"&&oCode="+vo.getoCode();	          
	  } 
		
	 // 회원의 포상 정보 수정
	  @RequestMapping(value = "prizeUpdate", method = RequestMethod.POST)
	  public String prizeUpdate(Prize pvo){
	        System.out.println("업데이트 id: "+pvo);
	        memberService.prizeUpdate(pvo);	          
	        return "redirect:/profile2?uid="+pvo.getUid();	          
	  } 
	  // 회원의 경력 정보 수정
	  @RequestMapping(value = "careerUpdate", method = RequestMethod.POST)
	  public String careerUpdate(Career cavo){
	        System.out.println("업데이트 id: "+cavo);
	        memberService.careerUpdate(cavo);	          
	        return "redirect:/profile2?uid="+cavo.getUid();	          
	  } 
	  
	  // 회원의 자격증 정보 수정
	  @RequestMapping(value = "certificateUpdate", method = RequestMethod.POST)
	  public String certificateUpdate(Certificate cevo){
	        System.out.println("업데이트 id: "+cevo);
	        memberService.certificateUpdate(cevo);	          
	        return "redirect:/profile2?uid="+cevo.getUid();	          
	  } 
}
	  
		
	
