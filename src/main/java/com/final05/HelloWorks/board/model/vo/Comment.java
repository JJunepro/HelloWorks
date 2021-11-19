package com.final05.HelloWorks.board.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Comment {
	private int c_n;
	private int b_n;
	private String uid;
	private String c_pwd;
	private String c_name;
	private String c_comments;
	private String c_timestamp;

	public Comment() {

	}

	public Comment(int c_n, String c_pwd, String c_comments) {
		super();
		this.c_n = c_n;
		this.c_pwd = c_pwd;
		this.c_comments = c_comments;
	}

	public Comment(int c_n, int b_n, String uid, String c_pwd, String c_comments, String c_timestamp) {
		super();
		this.c_n = c_n;
		this.b_n = b_n;
		this.uid = uid;
		this.c_pwd = c_pwd;
		this.c_comments = c_comments;
		this.c_timestamp = c_timestamp;
	}

	public Comment(int b_n, String c_pwd, String c_name, String c_comments) {
		super();
		this.b_n = b_n;
		this.c_pwd = c_pwd;
		this.c_name = c_name;
		this.c_comments = c_comments;
	}

	@Override
	public String toString() {
		return "Comment [c_n=" + c_n + ", b_n=" + b_n + ", uid=" + uid + ", c_pwd=" + c_pwd + ", c_name=" + c_name
				+ ", c_comments=" + c_comments + ", c_timestamp=" + c_timestamp + "]";
	}

	public int getC_n() {
		return c_n;
	}

	public void setC_n(int c_n) {
		this.c_n = c_n;
	}

	public int getB_n() {
		return b_n;
	}

	public void setB_n(int b_n) {
		this.b_n = b_n;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getC_pwd() {
		return c_pwd;
	}

	public void setC_pwd(String c_pwd) {
		this.c_pwd = c_pwd;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_comments() {
		return c_comments;
	}

	public void setC_comments(String c_comments) {
		this.c_comments = c_comments;
	}

	public String getC_timestamp() {
		return c_timestamp;
	}

	public void setC_timestamp(String c_timestamp) {
		this.c_timestamp = c_timestamp;
	}

}
