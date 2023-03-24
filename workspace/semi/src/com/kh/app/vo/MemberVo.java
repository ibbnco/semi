package com.kh.app.vo;

public class MemberVo {
	private String member_no;
	private String member_id;
	private String member_pwd;
	private String member_name;
	private String member_nick;
	private String member_tel;
	private String member_email;
	private String quit_yn;
	private String member_grade;
	private String enroll_date;
	private String member_point;
	private String grade_no;
	public String getMember_no() {
		return member_no;
	}
	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_nick() {
		return member_nick;
	}
	public void setMember_nick(String member_nick) {
		this.member_nick = member_nick;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getQuit_yn() {
		return quit_yn;
	}
	public void setQuit_yn(String quit_yn) {
		this.quit_yn = quit_yn;
	}
	public String getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(String member_grade) {
		this.member_grade = member_grade;
	}
	public String getEnroll_date() {
		return enroll_date;
	}
	public void setEnroll_date(String enroll_date) {
		this.enroll_date = enroll_date;
	}
	public String getMember_point() {
		return member_point;
	}
	public void setMember_point(String member_point) {
		this.member_point = member_point;
	}
	public String getGrade_no() {
		return grade_no;
	}
	public void setGrade_no(String grade_no) {
		this.grade_no = grade_no;
	}
	@Override
	public String toString() {
		return "MemberVo [member_no=" + member_no + ", member_id=" + member_id + ", member_pwd=" + member_pwd
				+ ", member_name=" + member_name + ", member_nick=" + member_nick + ", member_tel=" + member_tel
				+ ", member_email=" + member_email + ", quit_yn=" + quit_yn + ", member_grade=" + member_grade
				+ ", enroll_date=" + enroll_date + ", member_point=" + member_point + ", grade_no=" + grade_no + "]";
	}
	public MemberVo(String member_no, String member_id, String member_pwd, String member_name, String member_nick,
			String member_tel, String member_email, String quit_yn, String member_grade, String enroll_date,
			String member_point, String grade_no) {
		super();
		this.member_no = member_no;
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_nick = member_nick;
		this.member_tel = member_tel;
		this.member_email = member_email;
		this.quit_yn = quit_yn;
		this.member_grade = member_grade;
		this.enroll_date = enroll_date;
		this.member_point = member_point;
		this.grade_no = grade_no;
	}
	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
