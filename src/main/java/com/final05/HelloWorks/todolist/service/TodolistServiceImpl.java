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
	public int todoInsert(Todolist vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int todoRemove(int todoNum) throws Exception {
		return todoDao.todoRemove(todoNum);
	}


}
