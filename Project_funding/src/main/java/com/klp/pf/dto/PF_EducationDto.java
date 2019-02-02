package com.klp.pf.dto;

public class PF_EducationDto {
	
	private int edu_no;
	private int profile_no;
	private String edu_name;
	private String edu_state;
	private String edu_major;
	private String edu_hiredate;
	private String edu_firedate;
	
	public PF_EducationDto() {
		super();
	}
	public PF_EducationDto(int edu_no, int profile_no, String edu_name, String edu_state, String edu_major,
			String edu_hiredate, String edu_firedate) {
		super();
		this.edu_no = edu_no;
		this.profile_no = profile_no;
		this.edu_name = edu_name;
		this.edu_state = edu_state;
		this.edu_major = edu_major;
		this.edu_hiredate = edu_hiredate;
		this.edu_firedate = edu_firedate;
	}
	
	public int getEdu_no() {
		return edu_no;
	}
	public void setEdu_no(int edu_no) {
		this.edu_no = edu_no;
	}
	public int getProfile_no() {
		return profile_no;
	}
	public void setProfile_no(int profile_no) {
		this.profile_no = profile_no;
	}
	public String getEdu_name() {
		return edu_name;
	}
	public void setEdu_name(String edu_name) {
		this.edu_name = edu_name;
	}
	public String getEdu_state() {
		return edu_state;
	}
	public void setEdu_state(String edu_state) {
		this.edu_state = edu_state;
	}
	public String getEdu_major() {
		return edu_major;
	}
	public void setEdu_major(String edu_major) {
		this.edu_major = edu_major;
	}
	public String getEdu_hiredate() {
		return edu_hiredate;
	}
	public void setEdu_hiredate(String edu_hiredate) {
		this.edu_hiredate = edu_hiredate;
	}
	public String getEdu_firedate() {
		return edu_firedate;
	}
	public void setEdu_firedate(String edu_firedate) {
		this.edu_firedate = edu_firedate;
	}
	
}
