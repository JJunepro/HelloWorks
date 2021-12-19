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
	public List<Todolist> todolistAll(int startPage, int limit) throws Exception {
		return todoDao.todolistAll(startPage, limit);
	}

	@Override
	public int todoCount() throws Exception {
		return todoDao.todoCount();
	}
	
	@Override
	public List<Todolist> todolistDone(int startPage, int limit) throws Exception {
		return todoDao.todolistDone(startPage, limit);
	}

	
	@Override
	public int todoAdd(Todolist vo) throws Exception {
		return todoDao.todoAdd(vo);
	}

	@Override
	public int todoRemove(int todoNum) throws Exception {
		return todoDao.todoRemove(todoNum);
	}

	@Override
	public int todoUpdate(int todoNum) throws Exception {
		return todoDao.todoUpdate(todoNum);
	}




}
