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
	public List<Todolist> todolistToday(Todolist vo) throws Exception {
		return todoDao.todolistToday(vo);
	}

	@Override
	public List<Todolist> todayImport(Todolist vo) throws Exception {
		return todoDao.todayImport(vo);
	}

	@Override
	public List<Todolist> todayDone(Todolist vo) throws Exception {
		return todoDao.todayDone(vo);
	}

	@Override
	public int todoInsert(Todolist vo) throws Exception {
		return todoDao.todoInsert(vo);
	}

}
