package com.final05.HelloWorks.member.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final05.HelloWorks.member.model.dao.MemberDao;
import com.final05.HelloWorks.member.model.vo.Appreaisal;
import com.final05.HelloWorks.member.model.vo.Career;
import com.final05.HelloWorks.member.model.vo.Certificate;
import com.final05.HelloWorks.member.model.vo.Degree;
import com.final05.HelloWorks.member.model.vo.Family;
import com.final05.HelloWorks.member.model.vo.Member;
import com.final05.HelloWorks.member.model.vo.Organization;
import com.final05.HelloWorks.member.model.vo.Prize;
import com.final05.HelloWorks.member.model.vo.Transfer;

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
	   
	   public Member profile2(Member vo) {			
			return memberDao.profile2(vo);
	   }
	 
	  
//	   public List<Member> memberAll(Member vo) {			
//			return memberDao.memberAll(vo);
//	   }
	   public List<Member> memberOSeach(String okeyword) {			
			return memberDao.memberOSeach(okeyword);
	   }
	   public List<Member> memberSeach(String keyword) {			
			return memberDao.memberSeach(keyword);
	   }
	
		public int totalCount() {
			return memberDao.listCount();
		}
		
		public List<Member> memberAll(int startPage, int limit) {
			return memberDao.memberAll(startPage, limit);
		}
		/* 
	     public List<Member> selectSearch(String keyword) {			
			return memberDao.searchList(keyword);
		 }
	     */
	   public int memberAdd(Member vo) {
		   return memberDao.memberAdd(vo);
	   }
	  
	  

	   public int memberDelete(String uid) {
		   return memberDao.memberDelete(uid);
	   }
	   public int memberUpdate(Member vo) {
		   return memberDao.memberUpdate(vo);
	   }
	   public int degreeUpdate(Degree dvo) {
		   return memberDao.degreeUpdate(dvo);
	   }
	   public int appreaisalUpdate(Appreaisal avo) {
		   return memberDao.appreaisalUpdate(avo);
	   }
	   public int organizationUpdate(Organization ovo) {
		   return memberDao.organizationUpdate(ovo);
	   }
	   public int transferUpdate(Transfer tvo) {
		   return memberDao.transferUpdate(tvo);
	   }
	  
	   public List<Family> familyUpdate(ArrayList<Family> family) {
		   return memberDao.familyUpdate(family);
	   }
	   public int prizeUpdate(Prize pvo) {
		   return memberDao.prizeUpdate(pvo);
	   }
	   public int careerUpdate(Career cavo) {
		   return memberDao.careerUpdate(cavo);
	   }
	   public int certificateUpdate(Certificate cevo) {
		   return memberDao.certificateUpdate(cevo);
	   }
}

