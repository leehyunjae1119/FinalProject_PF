package com.klp.pf.dto;

import java.util.Date;

public class PF_CoinDto {
	
	private int coin_no;
	private int user_no;
	private Date coin_regdate;
	private int coin_money;
	private String coin_state;
	// 유저 테이블과 조인하기 때문에 user_id 컬럼 추가
	private String user_id;

	public PF_CoinDto() {
		super();
	}

	public PF_CoinDto(int coin_no, int user_no, Date coin_regdate, int coin_money, String coin_state, String user_id) {
		super();
		this.coin_no = coin_no;
		this.user_no = user_no;
		this.coin_regdate = coin_regdate;
		this.coin_money = coin_money;
		this.coin_state = coin_state;
		this.user_id = user_id;
	}

	public int getCoin_no() {
		return coin_no;
	}

	public void setCoin_no(int coin_no) {
		this.coin_no = coin_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
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

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

}
