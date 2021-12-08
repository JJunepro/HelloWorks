package com.final05.HelloWorks.board.model.Service;

import java.util.List;

import com.final05.HelloWorks.board.model.vo.Board;

public interface BoardService {
	int totalCount();
	Board selectBoard(int chk, int b_n);
	List<Board> selectList(int startPage, int limit);
	List<Board> selectSearch(String keyword);
	void writeBoard(Board b);
	Board updateBoard(Board b);
	void deleteBoard(int b_n);
}
