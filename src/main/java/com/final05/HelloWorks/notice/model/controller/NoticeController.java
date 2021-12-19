package com.final05.HelloWorks.notice.model.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.final05.HelloWorks.member.model.vo.Member;
import com.final05.HelloWorks.notice.model.service.NoticeService;
import com.final05.HelloWorks.notice.model.vo.Notice;


@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	public static final int LIMIT = 10;
	
	//공지사항 글 리스트
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public ModelAndView noticeList(@RequestParam(name = "page", defaultValue = "1") int page,
			ModelAndView mv ) throws Exception {
		int currentPage = page;
		  // 한 페이지당 출력할 목록 갯수
		  int listCount = noticeService.noticeCount();
		  int maxPage = (int) ((double) listCount / LIMIT + 0.9);
		  Notice vo = new Notice();
		  List<Notice> list = new ArrayList<Notice>();
		  try {
			list = noticeService.noticeList(currentPage, LIMIT);
			mv.addObject("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 mv.setViewName("notice");
		return mv;
	}
	
	//게시글 자세히 보기
	@RequestMapping(value = "noticeDetail", method = RequestMethod.GET)
	public String noticeDetail (Notice vo, @RequestParam("noticeNo") int  noticeNo,
			Model model, HttpSession session) throws Exception{
		Notice noticeDetail = noticeService.noticeDetail(vo);
		noticeService.noticeView(noticeNo);

		model.addAttribute("notice", noticeDetail);
		return "noticedetail";
	}
	
	// 게시글 작성
	@RequestMapping(value = "noticeAdd", method = RequestMethod.GET)
	public ModelAndView noticeAdd(ModelAndView mv) {
		mv.setViewName("noticeAdd");
		return mv;
	}
  @RequestMapping(value = "noticeAdd", method=RequestMethod.POST)
  public ModelAndView noticeAdd(Notice vo,  
	  
		   HttpServletRequest request,HttpServletResponse response, RedirectAttributes rttr, ModelAndView mv) {
      int result=0;
      try {
         System.out.println("vo"+vo);
         
        
         result =  noticeService.addNotice(vo);
      
         System.out.println("result"+result);
         if(result==1) {
            mv.setViewName("redirect:/notice");
         }else {
            mv.setViewName("redirect:/notice");
         }	         
      } catch (Exception e) {
         e.printStackTrace();
      }	      
      return mv;
   }
  
  //게시글 삭제
	@RequestMapping(value = "noticeRemove", method = RequestMethod.GET)
	public String noticeRemove (@RequestParam("noticeNo") int noticeNo, Model model) throws Exception {
		System.out.println("삭제noticeRemove: " + noticeNo);
		noticeService.noticeRemove(noticeNo);
		return "redirect:/notice";
	}
	

}
