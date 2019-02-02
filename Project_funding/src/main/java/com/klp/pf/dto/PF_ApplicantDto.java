package com.klp.pf.dto;

public class PF_ApplicantDto {

	private int applicant_no;
	private int board_no;
	private int user_no;
	private String applicant_state;
	private int apply_cnt;
	
	public int getApply_cnt() {
		return apply_cnt;
	}
	public void setApply_cnt(int apply_cnt) {
		this.apply_cnt = apply_cnt;
	}
	public int getApplicant_no() {
		return applicant_no;
	}
	public void setApplicant_no(int applicant_no) {
		this.applicant_no = applicant_no;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getApplicant_state() {
		return applicant_state;
	}
	public void setApplicant_state(String applicant_state) {
		this.applicant_state = applicant_state;
	}
	
	@Override
	public String toString() {
		return "PF_APPLICANT [applicant_no=" + applicant_no + ", board_no=" + board_no + ", user_no=" + user_no
				+ ", applicant_state=" + applicant_state + ", apply_cnt=" + apply_cnt +"]";
	}
	
}
