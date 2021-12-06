package com.final05.HelloWorks.member.model.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.final05.HelloWorks.member.model.vo.Appreaisal;
import com.final05.HelloWorks.member.model.vo.Career;
import com.final05.HelloWorks.member.model.vo.Certificate;
import com.final05.HelloWorks.member.model.vo.Degree;
import com.final05.HelloWorks.member.model.vo.Member;
import com.final05.HelloWorks.member.model.vo.Organization;
import com.final05.HelloWorks.member.model.vo.Prize;
import com.final05.HelloWorks.member.model.vo.Transfer;

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
 
 public int organizationUpdate(Organization ovo) {
	 System.out.println("dao 업테이트"+ovo);
     return sqlSession.update("Member.OrganizationUpdate", ovo);
  }
 public int degreeUpdate(Degree dvo) {
	 System.out.println("dao 업테이트"+dvo);
     return sqlSession.update("Member.DegreeUpdate", dvo);
  }
 public int appreaisalUpdate(Appreaisal avo) {
	 System.out.println("dao 업테이트"+avo);
     return sqlSession.update("Member.AppreaisalUpdate", avo);
  }
 public int transferUpdate(Transfer tvo) {
	 System.out.println("dao 업테이트"+tvo);
     return sqlSession.update("Member.TransferUpdate", tvo);
  }
 
 public int familyUpdate(Map<String, Object> map) {
	 System.out.println("dao 업테이트"+map);
     return sqlSession.update("Member.familyUpdate", map);
  }
 public int prizeUpdate(Prize pvo) {
	 System.out.println("dao 업테이트"+pvo);
     return sqlSession.update("Member.prizeUpdate", pvo);
  }
 public int careerUpdate(Career cavo) {
	 System.out.println("dao 업테이트"+cavo);
     return sqlSession.update("Member.careerUpdate", cavo);
  }
 public int certificateUpdate(Certificate cevo) {
	 System.out.println("dao 업테이트"+cevo);
     return sqlSession.update("Member.certificateUpdate", cevo);
  }
 
 
 
 
}

