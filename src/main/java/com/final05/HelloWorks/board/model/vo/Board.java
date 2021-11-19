package com.final05.HelloWorks.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Board implements java.io.Serializable {
	private static final long serialVersionUID = 20001L;

	private int b_n;
	private String uid;
	private int c_n;
	private int ca_n;
	private int img_n;
	private String b_pwd;
	private String b_title;
	private String b_content;
	private Date b_timestamp;
	private int b_view;

	public Board(int b_n, String b_pwd) {
		super();
		this.b_n = b_n;
		this.b_pwd = b_pwd;
	}

	public Board(int b_n, String uid, int img_n, String b_title, String b_content) {
		super();
		this.b_n = b_n;
		this.uid = uid;
		this.img_n = img_n;
		this.b_title = b_title;
		this.b_content = b_content;
	}

	public Board(String uid, int img_n, String b_pwd, String b_title, String b_content) {
		super();
		this.uid = uid;
		this.img_n = img_n;
		this.b_pwd = b_pwd;
		this.b_title = b_title;
		this.b_content = b_content;
	}

	@Override
	public String toString() {
		return "Board [b_n=" + b_n + ", uid=" + uid + ", c_n=" + c_n + ", ca_n=" + ca_n + ", img_n=" + img_n
				+ ", b_pwd=" + b_pwd + ", b_title=" + b_title + ", b_content=" + b_content + ", b_timestamp="
				+ b_timestamp + ", b_view=" + b_view + "]";
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

	public int getC_n() {
		return c_n;
	}

	public void setC_n(int c_n) {
		this.c_n = c_n;
	}

	public int getCa_n() {
		return ca_n;
	}

	public void setCa_n(int ca_n) {
		this.ca_n = ca_n;
	}

	public int getImg_n() {
		return img_n;
	}

	public void setImg_n(int img_n) {
		this.img_n = img_n;
	}

	public String getB_pwd() {
		return b_pwd;
	}

	public void setB_pwd(String b_pwd) {
		this.b_pwd = b_pwd;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public Date getB_timestamp() {
		return b_timestamp;
	}

	public void setB_timestamp(Date b_timestamp) {
		this.b_timestamp = b_timestamp;
	}

	public int getB_view() {
		return b_view;
	}

	public void setB_view(int b_view) {
		this.b_view = b_view;
	}

}
