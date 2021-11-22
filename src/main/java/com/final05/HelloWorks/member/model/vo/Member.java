package com.final05.HelloWorks.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Member {
	private String uid;	// 아이디
	private int oCode;	// 부서코드
	private String pwd;	// 비밀번호
	private int dept;	// 사번
	private String name;	//이름
	private int birth;	//생년월일
	private int resident;	//주민
	private String address;	//주소
	private String mail;	//메일
	private int phone;	//휴대전화
	private String gender;	//성별
	private int cPhone;	//회사전화
	private int salary;	// 급여
	private Date salaryDate;	// 급여일
	private Date entry;	// 입사일
	private Date last;	//퇴사일
	
	public Member() {}
	
	public Member(String uid, int oCode, String pwd, int dept, String name, int birth, int resident, String address,
			String mail, int phone, String gender, int cPhone, int salary, Date salaryDate, Date entry, Date last) {
		super();
		this.uid = uid;
		this.oCode = oCode;
		this.pwd = pwd;
		this.dept = dept;
		this.name = name;
		this.birth = birth;
		this.resident = resident;
		this.address = address;
		this.mail = mail;
		this.phone = phone;
		this.gender = gender;
		this.cPhone = cPhone;
		this.salary = salary;
		this.salaryDate = salaryDate;
		this.entry = entry;
		this.last = last;
	}
	@Override
	public String toString() {
		return "Member [uid=" + uid + ", oCode=" + oCode + ", pwd=" + pwd + ", dept=" + dept + ", name=" + name
				+ ", birth=" + birth + ", resident=" + resident + ", address=" + address + ", mail=" + mail + ", phone="
				+ phone + ", gender=" + gender + ", cPhone=" + cPhone + ", salary=" + salary + ", salaryDate="
				+ salaryDate + ", entry=" + entry + ", last=" + last + "]";
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
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getcPhone() {
		return cPhone;
	}
	public void setcPhone(int cPhone) {
		this.cPhone = cPhone;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public Date getSalaryDate() {
		return salaryDate;
	}
	public void setSalaryDate(Date salaryDate) {
		this.salaryDate = salaryDate;
	}
	public Date getEntry() {
		return entry;
	}
	public void setEntry(Date entry) {
		this.entry = entry;
	}
	public Date getLast() {
		return last;
	}
	public void setLast(Date last) {
		this.last = last;
	}
	
	
	
	


}
