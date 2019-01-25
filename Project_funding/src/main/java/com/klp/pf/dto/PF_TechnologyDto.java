package com.klp.pf.dto;

public class PF_TechnologyDto {
	
//    TECH_NO NUMBER PRIMARY KEY,
//    PROFILE_NO NUMBER NOT NULL,
//    TECH_TYPE VARCHAR2(128) NOT NULL,
//    TECH_SKILL VARCHAR2(128) NOT NULL,
//    TECH_EXP VARCHAR2(128) NOT NULL,
	private int tech_no;
	private int profile_no;
	private String tech_type;
	private String tech_skill; 
	private String tech_exp;
	
	
	public PF_TechnologyDto(int profile_no, String tech_type, String tech_skill, String tech_exp) {
		super();
		this.profile_no = profile_no;
		this.tech_type = tech_type;
		this.tech_skill = tech_skill;
		this.tech_exp = tech_exp;
	}
	public PF_TechnologyDto() {
		super();
	}
	public PF_TechnologyDto(int tech_no, int profile_no, String tech_type, String tech_skill, String tech_exp) {
		super();
		this.tech_no = tech_no;
		this.profile_no = profile_no;
		this.tech_type = tech_type;
		this.tech_skill = tech_skill;
		this.tech_exp = tech_exp;
	}
	public int getTech_no() {
		return tech_no;
	}
	public void setTech_no(int tech_no) {
		this.tech_no = tech_no;
	}
	public int getProfile_no() {
		return profile_no;
	}
	public void setProfile_no(int profile_no) {
		this.profile_no = profile_no;
	}
	public String getTech_type() {
		return tech_type;
	}
	public void setTech_type(String tech_type) {
		this.tech_type = tech_type;
	}
	public String getTech_skill() {
		return tech_skill;
	}
	public void setTech_skill(String tech_skill) {
		this.tech_skill = tech_skill;
	}
	public String getTech_exp() {
		return tech_exp;
	}
	public void setTech_exp(String tech_exp) {
		this.tech_exp = tech_exp;
	}
	
	
}
