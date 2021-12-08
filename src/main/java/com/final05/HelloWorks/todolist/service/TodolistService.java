package com.final05.HelloWorks.todolist.service;

import java.util.List;

import com.final05.HelloWorks.todolist.vo.Todolist;

public interface TodolistService {

	public List<Todolist> todolistToday(Todolist vo) throws Exception;
	public List<Todolist> todayImport(Todolist vo) throws Exception;
	public List<Todolist> todayDone(Todolist vo) throws Exception;
	
	public int todoInsert(Todolist vo) throws Exception;
	
}
