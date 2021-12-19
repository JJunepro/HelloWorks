package com.final05.HelloWorks.notice.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.notice.model.dao.NoticeDao;
import com.final05.HelloWorks.notice.model.vo.Notice;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public List<Notice> noticeList(int startPage, int limit) throws Exception {
		return noticeDao.noticeList(startPage, limit);
	}

	@Override
	public int noticeCount() throws Exception {
		return noticeDao.noticeCount();
	}

	@Override
	public int addNotice(Notice vo) throws Exception {
		return noticeDao.addNotice(vo);
	}

	@Override
	public Notice noticeDetail(Notice vo) throws Exception {
		return noticeDao.noticeDetail(vo);
	}

	@Override
	public int noticeRemove(int noticeNo) throws Exception {
		return noticeDao.noticeRemove(noticeNo);
	}

	@Override
	public int noticeView(int noticeNo) throws Exception {
		return noticeDao.noticeView(noticeNo);
	}



}
