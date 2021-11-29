package com.final05.HelloWorks.member.model.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.member.model.dao.MemberDao;
import com.final05.HelloWorks.member.model.vo.Member;

@Service("MemberService") // 현재 클래스를 스프링에서 관리하는 service bean으로 등록
public class MemberService {
    
	@Autowired
	   private MemberDao memberDao;
	   
	   public Member login(Member vo) {
	      return memberDao.login(vo);
	   }
	  
	   public Member idSearch(Member vo) {
		      return memberDao.idSearch(vo);
		   }
	   
	   public Member pwdSearch(Member vo) {
		   return memberDao.pwdSearch(vo);
	   }
	   
	   public Member profile2(String uid) {			
			return memberDao.profile2(uid);
	   }
	   
	   public List<Member> memberAll(Member vo) {			
			return memberDao.memberAll(vo);
	   }
	   
	   public int memberAdd(Member vo) {
		   return memberDao.memberAdd(vo);
	   }

	   public int memberDelete(String uid) {
		   return memberDao.memberDelete(uid);
	   }
	   
}

