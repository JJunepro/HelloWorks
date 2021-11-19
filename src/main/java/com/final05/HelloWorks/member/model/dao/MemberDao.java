package com.final05.HelloWorks.member.model.dao;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.member.model.vo.Member;

//현재 클래스를 스프링에서 관리하는 dao bean으로 등록
@Repository("MemberDao")
public class MemberDao {

  @Autowired
  private SqlSession sqlSession;

  public Member login(Member vo) {
     return sqlSession.selectOne("Member.login", vo);
  }
  public void logout(HttpSession sessin) {
  }
}
