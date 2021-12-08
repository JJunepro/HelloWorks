package com.final05.HelloWorks.todolist.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.final05.HelloWorks.todolist.service.TodolistService;
import com.final05.HelloWorks.todolist.vo.Todolist;

@Controller
public class TodolistController {
	
	@Autowired
	private TodolistService todoService;
	
//	@RequestMapping(value = "todolist", method=RequestMethod.GET )
//	public ModelAndView  todolistToday(ModelAndView mv) {
//		Todolist vo = new Todolist();
//		List<Todolist> todaylist = new ArrayList<Todolist>();
//		try {
//			todaylist = todoService.todolistToday(vo);
//			mv.addObject("list", todaylist);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		mv.setViewName("todolist");
//		return mv;
//	}
	
	public ModelAndView  todolistToday(ModelAndView mv) {
		Todolist vo = new Todolist();
		List<Todolist> todaylist = new ArrayList<Todolist>();
		try {
			todaylist = todoService.todolistToday(vo);
			mv.addObject("todaylist", todaylist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("todolist");
		return mv;
	} 
	
	
	public ModelAndView todoInsert(Todolist vo, ModelAndView mv,
			HttpServletRequest request,HttpServletResponse response, RedirectAttributes rttr, 
				@RequestParam("todoTitle") String todoTitle,
				@RequestParam("todoDate") String todoDate,
				@RequestParam("todoMark") String todoMark ){
		int result = 0;
		try {
			System.out.println(result);
			vo.setTodoTitle(todoTitle);
			vo.setTodoDate(todoDate);
			vo.setTodoMark(todoMark);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	

}
