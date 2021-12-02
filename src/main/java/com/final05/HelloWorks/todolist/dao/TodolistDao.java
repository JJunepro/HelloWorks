package com.final05.HelloWorks.todolist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.todolist.vo.Todolist;

@Repository("todoDao")
public class TodolistDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<Todolist> todolistAll(Todolist vo){
		return sqlSession.selectList("Todolist.todolistAll", vo);
	}
}
