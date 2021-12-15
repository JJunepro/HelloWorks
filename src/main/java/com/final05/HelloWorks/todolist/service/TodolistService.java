package com.final05.HelloWorks.todolist.service;

import java.util.List;

import com.final05.HelloWorks.todolist.vo.Todolist;

public interface TodolistService {

	public List<Todolist> todolistAll(int startPage, int limit) throws Exception;
	
	public int todoCount() throws Exception;
	
	public int todoInsert(Todolist vo) throws Exception;
	public int todoRemove(int todoNum) throws Exception;
}
