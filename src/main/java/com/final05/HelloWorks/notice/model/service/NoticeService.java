package com.final05.HelloWorks.notice.model.service;

import java.util.List;
import java.util.Map;

import com.final05.HelloWorks.notice.model.vo.Notice;

public interface NoticeService {
	public List<Notice> noticeList(int startPage, int limit) throws Exception;
	public int noticeCount() throws Exception;
	
	public int addNotice(Notice vo) throws Exception;
	
	public Notice noticeDetail(Notice vo) throws Exception;
	
	public int noticeRemove(int noticeNo) throws Exception;
	
	//조회수
	public int noticeView(int noticeNo) throws Exception;
	
	

}