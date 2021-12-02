package com.final05.HelloWorks.todolist.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.todolist.service.TodolistService;
import com.final05.HelloWorks.todolist.vo.Todolist;

@Controller
public class TodolistController {
	@Autowired
	private TodolistService todoService;
	
	@RequestMapping(value = "todolist", method=RequestMethod.GET )
	public ModelAndView  todolistToday(ModelAndView mv) {
		Todolist vo = new Todolist();
		List<Todolist> list = new ArrayList<Todolist>();
		try {
			list = todoService.todolistAll(vo);
			mv.addObject("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("todolist");
		return mv;
	}
}
