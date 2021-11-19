package com.final05.HelloWorks.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.board.model.vo.Board;

@Repository("bDao")
public class BoardDao {

	@Autowired
	private SqlSession sqlSession;

	// 전체 글수 조회
	public int listCount() {
		return sqlSession.selectOne("Board.listCount");
	}

	// 글 가져오기
	public Board selectOne(int b_n) {
		return sqlSession.selectOne("Board.selectOne", b_n);
	}

	// 게시글 검색
	public List<Board> searchList(String keyword) {
		return sqlSession.selectList("Board.searchList", keyword);
	}

	// 특정 페이지 단위 조회
	public List<Board> selectList(int startPage, int limit) {
		int startRow = (startPage - 1) * limit;
		RowBounds row = new RowBounds(startRow, limit);
		return sqlSession.selectList("Board.selectList", null, row);
	}

	// 글 입력
	public int insertboard(Board b) {
		return sqlSession.insert("Board.insertBoard", b);
	}

	// 글 수정
	public int updateBoard(Board b) {
		return sqlSession.update("Board.updateBoard", b);
	}

	// 글 삭제
	public int deleteBoard(int b_n) {
		return sqlSession.delete("Board.deleteBoard", b_n);
	}

	// 조회수 증가
	public int addViewCount(int b_n) {
		return sqlSession.update("Board.addViewCount", b_n);
	}

}
