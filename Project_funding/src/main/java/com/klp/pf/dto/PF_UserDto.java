package com.klp.pf.dto;
//
//CREATE TABLE PF_USER(
//	    USER_NO NUMBER PRIMARY KEY,
//	    USER_ID VARCHAR2(128) UNIQUE NOT NULL,
//	    USER_PW VARCHAR2(128) NOT NULL,
//	    USER_EMAIL VARCHAR2(256) NOT NULL,
//	    USER_TYPE VARCHAR2(128) NOT NULL
//	);

public class PF_UserDto {
	private int user_no;
	private String user_id;
	private String user_pw;
	private String user_email;
	private String user_type;
	
	public PF_UserDto() {
		super();
	}
	public PF_UserDto(String user_id, String user_pw, String user_email, String user_type) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_email = user_email;
		this.user_type = user_type;
	}
	public PF_UserDto(int user_no, String user_id, String user_pw, String user_email, String user_type) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_email = user_email;
		this.user_type = user_type;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	
}
