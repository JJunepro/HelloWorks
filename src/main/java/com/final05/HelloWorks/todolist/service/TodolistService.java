package com.final05.HelloWorks.todolist.service;

import java.util.List;

import com.final05.HelloWorks.todolist.vo.Todolist;

public interface TodolistService {

	public List<Todolist> todolistAll(Todolist vo) throws Exception;
}
