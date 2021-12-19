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
	
	// 일정
	public List<Todolist> todolistAll(int startPage, int limit) {
		int startRow = (startPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Todolist.todolistAll", null, row);
	}
	
	// 완료된 일정
	public List<Todolist> todolistDone(int startPage, int limit) {
		int startRow = (startPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Todolist.todoDone", null, row);
	}
	
	public int todoCount() {
		return sqlSession.selectOne("Todolist.todoCount");
	}
	
	public int todoAdd(Todolist vo) {
		return sqlSession.insert("Todolist.todoAdd", vo);
	}
	
	public int todoRemove(int todoNum) {
		return sqlSession.delete("Todolist.todoRemove", todoNum);
	}
	
	public int todoUpdate(int todoNum) {
		return sqlSession.update("Todolist.todoUpdate", todoNum);
	}

}
