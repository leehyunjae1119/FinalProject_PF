package com.klp.pf.dto;

public class PF_CommentDto {
	
	private int comment_no;
	private String comment_content;
	private int board_no;
	private int user_no;
	private String comment_regdate;
	
	
	public int getComment_no() {
		return comment_no;
	}
	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	
	public String getComment_regdate() {
		return comment_regdate;
	}
	public void setComment_regdate(String comment_regdate) {
		this.comment_regdate = comment_regdate;
	}
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	
	@Override
	public String toString() {
		return "PF_CommentDto [comment_no=" + comment_no + ", comment_content=" + comment_content + ", board_no="
				+ board_no + ", user_no=" + user_no + ", comment_regdate=" + comment_regdate + "]";
	}
	
}
