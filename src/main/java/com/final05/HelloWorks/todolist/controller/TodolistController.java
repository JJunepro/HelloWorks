package com.final05.HelloWorks.todolist.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.final05.HelloWorks.attendance.model.vo.Attendance;
import com.final05.HelloWorks.todolist.service.TodolistService;
import com.final05.HelloWorks.todolist.vo.Todolist;

@Controller
public class TodolistController {
	
	@Autowired
	private TodolistService todoService;
	public static final int LIMIT = 10;
//	
//	@RequestMapping(value = "/todolist", method = RequestMethod.GET)
//	public String todolist() {
//		return "todolist";
//	}
	
//	@RequestMapping(value = "/todolist.do", method = RequestMethod.POST)
//	public ModelAndView todolistAll(ModelAndView mv, Todolist vo) {
//		List<Todolist> todaylist = new ArrayList<Todolist>();
//		return mv;
//	}
	
	@RequestMapping(value = "/todolist", method = RequestMethod.GET)
	  public ModelAndView todolistAll(@RequestParam(name = "page", defaultValue = "1") int page , ModelAndView mv) throws Exception { 
		  int currentPage = page;
		  // 한 페이지당 출력할 목록 갯수
		  int listCount = todoService.todoCount();
		  int maxPage = (int) ((double) listCount / LIMIT + 0.9);
		  Todolist vo = new Todolist();
		  List<Todolist> list = new ArrayList<Todolist>();
		  List<Todolist> done = new ArrayList<Todolist>();
		  try { 
			  list = todoService.todolistAll(currentPage, LIMIT);
			  done = todoService.todolistDone(currentPage, LIMIT);
			  mv.addObject("list",list);
			  mv.addObject("done",done);
		  }catch(Exception e) {
			  e.printStackTrace(); 
		  }

	 System.out.println("d"+list);
	  mv.setViewName("todolist");

	 return mv; 
	 }
	
	// main에 todo가져가기
	@RequestMapping(value = "todoMain", method = RequestMethod.GET)
	  public ModelAndView todoMain(@RequestParam(name = "page", defaultValue = "1") int page , ModelAndView mv,
			  HttpServletRequest request,HttpServletResponse response, RedirectAttributes rttr) throws Exception { 
		  int currentPage = page;
		  // 한 페이지당 출력할 목록 갯수
		  int listCount = todoService.todoCount();
		  int maxPage = (int) ((double) listCount / LIMIT + 0.9);
		  Todolist vo = new Todolist();
		  List<Todolist> list = new ArrayList<Todolist>();
		  try { 
			  list = todoService.todolistAll(currentPage, LIMIT);
			  mv.addObject("list",list);
		  }catch(Exception e) {
			  e.printStackTrace(); 
		  }

	 System.out.println("main에 불러오기"+list);
	  mv.setViewName("home");

	 return mv; 
	 }
	
	
	
	  @RequestMapping(value = "todoAdd", method = RequestMethod.GET)
		public ModelAndView todoAdd(ModelAndView mv) {
			mv.setViewName("todolist/todoAdd");
			return mv;
		}
	
	@RequestMapping(value = "todoAdd", method = RequestMethod.POST)
	public ModelAndView todoAdd (Todolist vo, ModelAndView mv, 
			@RequestParam("todoTitle") String todoTitle,
			HttpServletRequest request, HttpServletResponse response, RedirectAttributes rttr) {
		int result = 0;
		// id추가
		try {
			System.out.println("vo" +vo );
			result = todoService.todoAdd(vo);
			
			System.out.println("result" + result);
			if(result == 1) {
				mv.setViewName("redirect:/todolist");
			} else {
				mv.setViewName("redirect:/todolist");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping(value = "todoRemove", method = RequestMethod.GET)
	public String todoRemove (@RequestParam("todoNum") int todoNum, Model model) throws Exception {
		System.out.println("삭제todoNum: " + todoNum);
		todoService.todoRemove(todoNum);
		return "redirect:/todolist";
	}
	
	@RequestMapping(value = "todoAllRemove", method = RequestMethod.GET)
	public String todoAllRemove (Model model) throws Exception {
		todoService.todoAllRemove();
		return "redirect:/todolist";
	}
	
	@RequestMapping(value = "todoUpdate", method = RequestMethod.GET)
	public String todoUpdate (@RequestParam("todoNum") int todoNum, Model model) throws Exception {
		todoService.todoUpdate(todoNum);
		return "redirect:/todolist";
	}
	
}
