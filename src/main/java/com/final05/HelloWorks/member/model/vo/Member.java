package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Member {
	private String uid;	// 아이디
	private int oCode;	// 부서코드
	private String pwd;	// 비밀번호
	private int dept;	// 사번
	private String position;	//이름
	private String name;	//이름
	private int birth;	//생년월일
	private int resident;	//주민
	private String address;	//주소
	private String mail;	//메일
	private String phone;	//휴대전화
	private String gender;	//성별
	private String cPhone;	//회사전화
	private int salary;	// 급여
	private String pImage;  // 프로필
	private String salaryDate;	// 급여일
	private String entry;	// 입사일
	private String last;	//퇴사일
	private Organization organization;
	private Degree degree;
	private Appreaisal appreaisal;
	private Transfer transfer;
	private List<Family> family;
	private List<Prize> prize;
	private List<Career> career;
	private List<Certificate> certificate;
	
	private String keyword;
	private String okeyword;
	
	public Member() {}

	public Member(String uid, int oCode, String pwd, int dept, String position, String name, int birth, int resident,
			String address, String mail, String phone, String gender, String cPhone, int salary, String pImage,
			String salaryDate, String entry, String last, Organization organization, Degree degree,
			Appreaisal appreaisal, Transfer transfer, List<Family> family, List<Prize> prize, List<Career> career,
			List<Certificate> certificate, String keyword, String okeyword) {
		super();
		this.uid = uid;
		this.oCode = oCode;
		this.pwd = pwd;
		this.dept = dept;
		this.position = position;
		this.name = name;
		this.birth = birth;
		this.resident = resident;
		this.address = address;
		this.mail = mail;
		this.phone = phone;
		this.gender = gender;
		this.cPhone = cPhone;
		this.salary = salary;
		this.pImage = pImage;
		this.salaryDate = salaryDate;
		this.entry = entry;
		this.last = last;
		this.organization = organization;
		this.degree = degree;
		this.appreaisal = appreaisal;
		this.transfer = transfer;
		this.family = family;
		this.prize = prize;
		this.career = career;
		this.certificate = certificate;
		this.keyword = keyword;
		this.okeyword = okeyword;
	}

	@Override
	public String toString() {
		return "Member [uid=" + uid + ", oCode=" + oCode + ", pwd=" + pwd + ", dept=" + dept + ", position=" + position
				+ ", name=" + name + ", birth=" + birth + ", resident=" + resident + ", address=" + address + ", mail="
				+ mail + ", phone=" + phone + ", gender=" + gender + ", cPhone=" + cPhone + ", salary=" + salary
				+ ", pImage=" + pImage + ", salaryDate=" + salaryDate + ", entry=" + entry + ", last=" + last
				+ ", organization=" + organization + ", degree=" + degree + ", appreaisal=" + appreaisal + ", transfer="
				+ transfer + ", family=" + family + ", prize=" + prize + ", career=" + career + ", certificate="
				+ certificate + ", keyword=" + keyword + ", okeyword=" + okeyword + "]";
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

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getDept() {
		return dept;
	}

	public void setDept(int dept) {
		this.dept = dept;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBirth() {
		return birth;
	}

	public void setBirth(int birth) {
		this.birth = birth;
	}

	public int getResident() {
		return resident;
	}

	public void setResident(int resident) {
		this.resident = resident;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getcPhone() {
		return cPhone;
	}

	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getpImage() {
		return pImage;
	}

	public void setpImage(String pImage) {
		this.pImage = pImage;
	}

	public String getSalaryDate() {
		return salaryDate;
	}

	public void setSalaryDate(String salaryDate) {
		this.salaryDate = salaryDate;
	}

	public String getEntry() {
		return entry;
	}

	public void setEntry(String entry) {
		this.entry = entry;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public Organization getOrganization() {
		return organization;
	}

	public void setOrganization(Organization organization) {
		this.organization = organization;
	}

	public Degree getDegree() {
		return degree;
	}

	public void setDegree(Degree degree) {
		this.degree = degree;
	}

	public Appreaisal getAppreaisal() {
		return appreaisal;
	}

	public void setAppreaisal(Appreaisal appreaisal) {
		this.appreaisal = appreaisal;
	}

	public Transfer getTransfer() {
		return transfer;
	}

	public void setTransfer(Transfer transfer) {
		this.transfer = transfer;
	}

	public List<Family> getFamily() {
		return family;
	}

	public void setFamily(List<Family> family) {
		this.family = family;
	}

	public List<Prize> getPrize() {
		return prize;
	}

	public void setPrize(List<Prize> prize) {
		this.prize = prize;
	}

	public List<Career> getCareer() {
		return career;
	}

	public void setCareer(List<Career> career) {
		this.career = career;
	}

	public List<Certificate> getCertificate() {
		return certificate;
	}

	public void setCertificate(List<Certificate> certificate) {
		this.certificate = certificate;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getOkeyword() {
		return okeyword;
	}

	public void setOkeyword(String okeyword) {
		this.okeyword = okeyword;
	}
	

	
	
	


}
