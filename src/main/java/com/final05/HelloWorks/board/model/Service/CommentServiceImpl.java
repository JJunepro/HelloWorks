package com.final05.HelloWorks.board.model.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.board.model.dao.CommentDao;
import com.final05.HelloWorks.board.model.vo.Comment;

@Service("cService")
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentDao cDao;

	@Override
	public Comment selectComment(int c_n) {
		return cDao.selectOne(c_n);
	}

	@Override
	public List<Comment> selectList(int b_n) {
		return cDao.selectList(b_n);
	}

	@Override
	public int writeComment(Comment c) {
		return cDao.insertComment(c);
	}

	@Override
	public int updateComment(Comment c) {
		return cDao.updateComment(c);
	}

	@Override
	public int deleteComment(Comment c) {
		return cDao.deleteComment(c);
	}
}
