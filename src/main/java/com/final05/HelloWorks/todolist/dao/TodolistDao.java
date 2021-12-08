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
	
	public List<Todolist> todolistToday(Todolist vo){
		return sqlSession.selectList("Todolist.todolistToday", vo);
	}
	
	public List<Todolist> todayImport(Todolist vo){
		return sqlSession.selectList("Todolist.todayImport", vo);
	}
	public List<Todolist> todayDone(Todolist vo) {
		return sqlSession.selectList("Todolist.todayDone", vo);
	}
	
	public int todoInsert(Todolist vo) {
		return sqlSession.insert("Todolist.todoInsert", vo);
	}
}
