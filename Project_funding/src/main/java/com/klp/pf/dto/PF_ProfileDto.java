package com.klp.pf.dto;

public class PF_ProfileDto {
	private int profile_no;
	private int user_no;
	private String profile_job;
	private String profile_activity;
	private String profile_intro;
	public PF_ProfileDto(int profile_no, int user_no, String profile_job, String profile_activity,
			String profile_intro) {
		super();
		this.profile_no = profile_no;
		this.user_no = user_no;
		this.profile_job = profile_job;
		this.profile_activity = profile_activity;
		this.profile_intro = profile_intro;
	}
	public PF_ProfileDto() {
		super();
	}
	public PF_ProfileDto(int user_no) {
		super();
		this.user_no = user_no;
	}
	public int getProfile_no() {
		return profile_no;
	}
	public void setProfile_no(int profile_no) {
		this.profile_no = profile_no;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getProfile_job() {
		return profile_job;
	}
	public void setProfile_job(String profile_job) {
		this.profile_job = profile_job;
	}
	public String getProfile_activity() {
		return profile_activity;
	}
	public void setProfile_activity(String profile_activity) {
		this.profile_activity = profile_activity;
	}
	public String getProfile_intro() {
		return profile_intro;
	}
	public void setProfile_intro(String profile_intro) {
		this.profile_intro = profile_intro;
	}
	
	
}
