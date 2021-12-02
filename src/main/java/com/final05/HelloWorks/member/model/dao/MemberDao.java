package com.final05.HelloWorks.member.model.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.member.model.vo.Family;
import com.final05.HelloWorks.member.model.vo.Member;

//현재 클래스를 스프링에서 관리하는 dao bean으로 등록
@Repository("MemberDao")
public class MemberDao {

  @Autowired
  private SqlSession sqlSession;

  public Member login(Member vo) {
     return sqlSession.selectOne("Member.login", vo);
  }
  
  public Member idSearch(Member vo) {
	 return sqlSession.selectOne("Member.idSearch", vo);
 }
  public Member pwdSearch(Member vo) {
	 return sqlSession.selectOne("Member.pwdSearch", vo);
 }
 
 public Member profile2(String uid) {
	  System.out.println("id"+uid);
		 return sqlSession.selectOne("Member.profile", uid);
	 }
 public Member profileF(String uid) {
	  System.out.println("id"+uid);
		 return sqlSession.selectOne("Member.profileF", uid);
	 }
 public Member profileP(String uid) {
	  System.out.println("id"+uid);
		 return sqlSession.selectOne("Member.profileP", uid);
	 }
 public Member profileCar(String uid) {
	  System.out.println("id"+uid);
		 return sqlSession.selectOne("Member.profileCar", uid);
	 }
 public Member profileCer(String uid) {
	  System.out.println("id"+uid);
		 return sqlSession.selectOne("Member.profileCer", uid);
	 }
 public List<Member> memberAll(Member vo) {
		 return sqlSession.selectList("Member.memberAll", vo);
	 }
 
 public int memberAdd(Member vo) {
     return sqlSession.insert("Member.memberAdd", vo);
  }
 public int memberDelete(String uid) {
     return sqlSession.delete("Member.memberDelete", uid);
  }
 public int memberUpdate(Member vo) {
	 System.out.println("dao 업테이트"+vo);
     return sqlSession.update("Member.memberUpdate", vo);
  }
 public int familyUpdate(Family vo) {
	 System.out.println("dao 업테이트"+vo);
     return sqlSession.update("Member.familyUpdate", vo);
  }
 
 
 
}

