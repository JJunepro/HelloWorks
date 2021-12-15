package com.final05.HelloWorks.todolist.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.todolist.vo.Todolist;

@Repository("todoDao")
public class TodolistDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<Todolist> todolistAll(int startPage, int limit) {
		int startRow = (startPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Todolist.todolistAll", null, row);
	}
	
	public int todoCount() {
		return sqlSession.selectOne("Todolist.todoCount");
	}
	
	public int todoInsert(Todolist vo) {
		return sqlSession.insert("Todolist.todoInsert", vo);
	}
	
	public int todoRemove(int todoNum) {
		return sqlSession.delete("Todolist.todoRemove", todoNum);
	}
}
