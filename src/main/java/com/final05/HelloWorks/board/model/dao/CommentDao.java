package com.final05.HelloWorks.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.board.model.vo.Comment;

@Repository("cDao")
public class CommentDao {
	@Autowired
	private SqlSession sqlSession;

	// 게시글에 해당하는 댓글 조회
	public List<Comment> selectList(int b_n) {
		return sqlSession.selectList("BoardReply.selectCommentAll", b_n);
	}

	public Comment selectOne(int c_n) { // 단일 댓글 조회
		return sqlSession.selectOne("Comment.selectComment", c_n);
	}

	public int insertComment(Comment c) { // 댓글 입력
		return sqlSession.insert("Comment.insertComment", c);
	}

	public int updateComment(Comment c) { // 댓글 수정
		System.out.println(c);
		return sqlSession.update("Comment.updateComment", c);
	}

	public int deleteComment(Comment c) { // 댓글 삭제
		System.out.println(c);
		return sqlSession.delete("Comment.deleteComment", c);
	}
}
