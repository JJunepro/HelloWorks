package com.final05.HelloWorks.reserve.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("reserveDao")
public class ReserveDao {
	
	@Autowired
	SqlSession sqlSession;
}
