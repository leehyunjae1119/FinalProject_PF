package com.klp.pf.dto;

import java.util.Date;

public class PF_CoinDto {
	private int coin_no;
	private int user_do;
	private Date coin_regdate;
	private int coin_money;
	private String coin_state;
	public PF_CoinDto() {
		super();
	}
	public PF_CoinDto(int coin_no, int user_do, Date coin_regdate, int coin_money, String coin_state) {
		super();
		this.coin_no = coin_no;
		this.user_do = user_do;
		this.coin_regdate = coin_regdate;
		this.coin_money = coin_money;
		this.coin_state = coin_state;
	}
	public int getCoin_no() {
		return coin_no;
	}
	public void setCoin_no(int coin_no) {
		this.coin_no = coin_no;
	}
	public int getUser_do() {
		return user_do;
	}
	public void setUser_do(int user_do) {
		this.user_do = user_do;
	}
	public Date getCoin_regdate() {
		return coin_regdate;
	}
	public void setCoin_regdate(Date coin_regdate) {
		this.coin_regdate = coin_regdate;
	}
	public int getCoin_money() {
		return coin_money;
	}
	public void setCoin_money(int coin_money) {
		this.coin_money = coin_money;
	}
	public String getCoin_state() {
		return coin_state;
	}
	public void setCoin_state(String coin_state) {
		this.coin_state = coin_state;
	}
	
	
}