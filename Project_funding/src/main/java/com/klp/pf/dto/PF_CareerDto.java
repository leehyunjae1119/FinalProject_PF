package com.klp.pf.dto;

public class PF_CareerDto {
	
	private int career_no;
	private int profile_no;
	private String career_company; 
	private String career_dept;
	private String career_spot;
	private String career_hiredate;
	private String career_firedate;
	
	public PF_CareerDto(int career_no, int profile_no, String career_company, String career_dept, String career_spot,
			String career_hiredate, String career_firedate) {
		super();
		this.career_no = career_no;
		this.profile_no = profile_no;
		this.career_company = career_company;
		this.career_dept = career_dept;
		this.career_spot = career_spot;
		this.career_hiredate = career_hiredate;
		this.career_firedate = career_firedate;
	}
	public PF_CareerDto() {
		super();
	}
	
	public int getCareer_no() {
		return career_no;
	}
	public void setCareer_no(int career_no) {
		this.career_no = career_no;
	}
	public int getProfile_no() {
		return profile_no;
	}
	public void setProfile_no(int profile_no) {
		this.profile_no = profile_no;
	}
	public String getCareer_company() {
		return career_company;
	}
	public void setCareer_company(String career_company) {
		this.career_company = career_company;
	}
	public String getCareer_dept() {
		return career_dept;
	}
	public void setCareer_dept(String career_dept) {
		this.career_dept = career_dept;
	}
	public String getCareer_spot() {
		return career_spot;
	}
	public void setCareer_spot(String career_spot) {
		this.career_spot = career_spot;
	}
	public String getCareer_hiredate() {
		return career_hiredate;
	}
	public void setCareer_hiredate(String career_hiredate) {
		this.career_hiredate = career_hiredate;
	}
	public String getCareer_firedate() {
		return career_firedate;
	}
	public void setCareer_firedate(String career_firedate) {
		this.career_firedate = career_firedate;
	}
}
