package com.klp.pf.dto;

public class PF_InvestDto {
	private int invest_no;
	private int user_no;
	private int invest_money;
	private int board_no;
	
	public PF_InvestDto(int user_no, int invest_money, int board_no) {
		super();
		this.user_no = user_no;
		this.invest_money = invest_money;
		this.board_no = board_no;
	}
	public PF_InvestDto() {
		super();
	}
	public PF_InvestDto(int invest_no, int user_no, int invest_money, int board_no) {
		super();
		this.invest_no = invest_no;
		this.user_no = user_no;
		this.invest_money = invest_money;
		this.board_no = board_no;
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
	
	
}
