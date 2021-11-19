package com.final05.HelloWorks.board.model.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.board.model.dao.BoardDao;
import com.final05.HelloWorks.board.model.vo.Board;

@Service("bService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao bDao;

	@Override
	public int totalCount() {
		return bDao.listCount();
	}

	@Override
	public Board selectBoard(int chk, int b_n) {
		if (chk == 0)
			bDao.addViewCount(b_n);
		return bDao.selectOne(b_n);
	}

	@Override
	public List<Board> selectList(int startPage, int limit) {
		// TODO Auto-generated method stub
		return bDao.selectList(startPage, limit);
	}

	@Override
	public List<Board> selectSearch(String keyword) {
		return bDao.searchList(keyword);
	}

	@Override
	public void insertBoard(Board b) {
		bDao.insertboard(b);
	}

	@Override
	public Board updateBoard(Board b) {
		int result = bDao.updateBoard(b);
		if (result > 0) {
			b = bDao.selectOne(b.getB_n());
		} else {
			b = null;
		}
		return b;
	}

	@Override
	public void deleteBoard(int b_n) {
		bDao.deleteBoard(b_n);
	}

}
