package com.final05.HelloWorks.board.model.Service;

import java.util.List;

import com.final05.HelloWorks.board.model.vo.Comment;

public interface CommentService {
	 Comment selectComment(int b_n); 
	 List<Comment> selectList(int b_n); 
	 int insertComment(Comment c); 
	 int updateComment(Comment c); 
	 int deleteComment(Comment c); 
}
