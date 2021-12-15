package com.final05.HelloWorks.todolist.vo;

import org.springframework.stereotype.Component;

@Component
public class Todolist {
//	TODO_NUM NUMBER	NOT NULL,
//	U_ID	VARCHAR2(50) NOT NULL,
//	TODO_TITLE	VARCHAR2(200) NOT NULL,
//	TODO_DATE	TIMESTAMP NOT NULL,
//	TODO_MARK	VARCHAR2(1)	NOT NULL,
//	TODO_PROCESS	VARCHAR2(1)	NOT NULL,
//	CONSTRAINT PK_TODO_NUM PRIMARY KEY (TODO_NUM),
//	CONSTRAINT FK_TODOLIST_UID FOREIGN KEY (U_ID) REFERENCES MEMBER(U_ID) ON DELETE CASCADE,
//	CONSTRAINT CK_TODO_MARK CHECK (TODO_MARK IN ('0','1')),
//	CONSTRAINT CK_TODO_PROCESS CHECK (TODO_PROCESS IN ('0','1'))
	private static final long serialVersionUID = 1111L;
	private int todoNum;
	private String uid;
	private String todoTitle;
	private String todoDate;
	private String todoMark; // 일정0 주요일정1
	private String todoProcess; //진행중0 완료1
	

	@Override
	public String toString() {
		return "Todolist [todoNum=" + todoNum + ", uid=" + uid + ", todoTitle=" + todoTitle + ", todoDate=" + todoDate
				+ ", todoMark=" + todoMark + ", todoProcess=" + todoProcess + "]";
	}
	public int getTodoNum() {
		return todoNum;
	}
	public void setTodoNum(int todoNum) {
		this.todoNum = todoNum;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getTodoTitle() {
		return todoTitle;
	}
	public void setTodoTitle(String todoTitle) {
		this.todoTitle = todoTitle;
	}

	public String getTodoDate() {
		return todoDate;
	}
	public void setTodoDate(String todoDate) {
		this.todoDate = todoDate;
	}
	public String getTodoMark() {
		return todoMark;
	}
	public void setTodoMark(String todoMark) {
		this.todoMark = todoMark;
	}
	public String getTodoProcess() {
		return todoProcess;
	}
	public void setTodoProcess(String todoProcess) {
		this.todoProcess = todoProcess;
	}
	
	
	
}
