package com.klp.pf.dto;

import java.util.Date;

public class PF_MessageDto {
	
	private int message_no;
	private String message_content;
	private String message_reader;
	private String message_sender;
	private Date message_senddate;
	private String message_state;
	private String user_id;
	
	
	public PF_MessageDto() {
		
	}

	public PF_MessageDto(int message_no, String message_content, String message_reader, String message_sender,
			Date message_senddate, String message_state, String user_id) {
		super();
		this.message_no = message_no;
		this.message_content = message_content;
		this.message_reader = message_reader;
		this.message_sender = message_sender;
		this.message_senddate = message_senddate;
		this.message_state = message_state;
		this.user_id = user_id;
	}

	public PF_MessageDto(String message_content, String user_id) {
		super();
		this.message_content = message_content;
		this.user_id = user_id;
	}

	public int getMessage_no() {
		return message_no;
	}

	public void setMessage_no(int message_no) {
		this.message_no = message_no;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}

	public String getMessage_reader() {
		return message_reader;
	}

	public void setMessage_reader(String message_reader) {
		this.message_reader = message_reader;
	}

	public String getMessage_sender() {
		return message_sender;
	}

	public void setMessage_sender(String message_sender) {
		this.message_sender = message_sender;
	}

	public Date getMessage_senddate() {
		return message_senddate;
	}

	public void setMessage_senddate(Date message_senddate) {
		this.message_senddate = message_senddate;
	}

	public String getMessage_state() {
		return message_state;
	}

	public void setMessage_state(String message_state) {
		this.message_state = message_state;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
}
