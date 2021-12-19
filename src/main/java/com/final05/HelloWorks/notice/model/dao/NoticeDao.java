package com.final05.HelloWorks.notice.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.notice.model.vo.Notice;

@Repository("noticeDao")
public class NoticeDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<Notice> noticeList(int startPage, int limit) {
		int startRow = (startPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Notice.noticeList", null, row);
	}
	public int noticeCount() {
		return sqlSession.selectOne("Notice.noticeCount");
	}
	
	public int addNotice(Notice vo) {
		return sqlSession.insert("Notice.addNotice", vo);
	}
	
	public Notice noticeDetail(Notice vo) {
		return sqlSession.selectOne("Notice.noticeDetail", vo);
	}
	
	public int noticeRemove(int noticeNo) {
		return sqlSession.delete("Notice.noticeRemove", noticeNo);
	}
	public int noticeView(int noticeNo) {
		return sqlSession.update("Notice.noticeView", noticeNo);
	}
	
	
}
