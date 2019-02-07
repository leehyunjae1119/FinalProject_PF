package com.klp.pf.dto;

public class PF_InvestDto {
	private int invest_no;
	private int user_no;
	private int invest_money;
	private int board_no;
	private String user_id;
	private String user_email;
	
	public PF_InvestDto(int user_no, int invest_money, int board_no) {
		super();
		this.user_no = user_no;
		this.invest_money = invest_money;
		this.board_no = board_no;
	}
	public PF_InvestDto() {
		super();
	}
	public PF_InvestDto(int invest_no, int user_no, int invest_money, int board_no,String user_id, String user_email) {
		super();
		this.invest_no = invest_no;
		this.user_no = user_no;
		this.invest_money = invest_money;
		this.board_no = board_no;
		this.user_id = user_id;
		this.user_email = user_email;
	}
	public int getInvest_no() {
		return invest_no;
	}
	public void setInvest_no(int invest_no) {
		this.invest_no = invest_no;
	}
	public int getUse_no() {
		return user_no;
	}
	public void setUse_no(int user_no) {
		this.user_no = user_no;
	}
	public int getInvest_money() {
		return invest_money;
	}
	public void setInvest_money(int invest_money) {
		this.invest_money = invest_money;
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
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	
	
	
	
	
	
}
