package com.final05.HelloWorks.todolist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.todolist.dao.TodolistDao;
import com.final05.HelloWorks.todolist.vo.Todolist;

@Service("todoService")
public class TodolistServiceImpl implements TodolistService {
	@Autowired
	private TodolistDao todoDao;
	
	@Override
	public List<Todolist> todolistAll(Todolist vo) throws Exception {
		return todoDao.todolistAll(vo);
	}

}
