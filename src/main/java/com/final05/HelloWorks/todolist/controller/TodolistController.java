package com.final05.HelloWorks.todolist.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.todolist.service.TodolistService;
import com.final05.HelloWorks.todolist.vo.Todolist;

@Controller
public class TodolistController {
	
	@Autowired
	private TodolistService todoService;
	public static final int LIMIT = 10;
	
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
		  try { 
			  list = todoService.todolistAll(currentPage, LIMIT);
			  mv.addObject("list",list);
		  }catch(Exception e) {
			  e.printStackTrace(); 
		  }

	 System.out.println("d"+list);
	  mv.setViewName("todolist");

	 return mv; 
	 }
	
	@RequestMapping(value = "todoRemove", method = RequestMethod.GET)
	public String todoRemove (@RequestParam("todoNum") int todoNum, Model model) throws Exception {
		System.out.println("삭제todoNum: " + todoNum);
		todoService.todoRemove(todoNum);
		return "redirect:/todolist";
	}
}
