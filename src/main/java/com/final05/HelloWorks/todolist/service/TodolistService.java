package com.final05.HelloWorks.todolist.service;

import java.util.List;

import com.final05.HelloWorks.todolist.vo.Todolist;

public interface TodolistService {

	public List<Todolist> todolistAll(int startPage, int limit) throws Exception;
	public int todoCount() throws Exception;
	
	public List<Todolist> todolistDone(int startPage, int limit) throws Exception;
	
	public int todoAdd(Todolist vo) throws Exception;
	
	public int todoRemove(int todoNum) throws Exception;
	public int todoAllRemove() throws Exception;
	
	public int todoUpdate(int todoNum) throws Exception;
}
