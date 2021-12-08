package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Appreaisal {
	private String uid;  // 아이디
	private int oCode;	// 부서 코드
	private String aContent;	// 평가내용
	private String aRater;	// 평가자
	private String aRating;	// 채점내용
	private int aScore;	// 점수
	private String aStart;	// 시작일
	private String aEnd;	// 종료일
	
	public Appreaisal() {}



	public Appreaisal(String uid, int oCode, String aContent, String aRater, String aRating, int aScore, String aStart,
			String aEnd) {
		super();
		this.uid = uid;
		this.oCode = oCode;
		this.aContent = aContent;
		this.aRater = aRater;
		this.aRating = aRating;
		this.aScore = aScore;
		this.aStart = aStart;
		this.aEnd = aEnd;
	}

	@Override
	public String toString() {
		return "Appreaisal [uid=" + uid + ", oCode=" + oCode + ", aContent=" + aContent + ", aRater=" + aRater
				+ ", aRating=" + aRating + ", aScore=" + aScore + ", aStart=" + aStart + ", aEnd=" + aEnd + "]";
	}
	
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getoCode() {
		return oCode;
	}

	public void setoCode(int oCode) {
		this.oCode = oCode;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public String getaRater() {
		return aRater;
	}

	public void setaRater(String aRater) {
		this.aRater = aRater;
	}

	public String getaRating() {
		return aRating;
	}

	public void setaRating(String aRating) {
		this.aRating = aRating;
	}

	public int getaScore() {
		return aScore;
	}

	public void setaScore(int aScore) {
		this.aScore = aScore;
	}

	public String getaStart() {
		return aStart;
	}

	public void setaStart(String aStart) {
		this.aStart = aStart;
	}

	public String getaEnd() {
		return aEnd;
	}

	public void setaEnd(String aEnd) {
		this.aEnd = aEnd;
	}

	
	
	
	
	
}
