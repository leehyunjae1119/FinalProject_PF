package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_CoinDto;

public interface PF_CoinDao {
	String pf_coinNamespace = "pf_coin.";

	// 포인트 충전 내역

	public List<PF_CoinDto> coin_selectAll(int user_no, int page);

	public int totalCount_coin(int user_no);

	public int coin(int user_no, String coin_state);

	// 포인트 충전
	public int coin_insert(int user_no, int coin_money, String coin_state);

	public int coin_update(int coin_no);
	public int CountCoin();

}
