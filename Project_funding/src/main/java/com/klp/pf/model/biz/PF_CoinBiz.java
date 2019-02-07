package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_CoinDto;

public interface PF_CoinBiz {
	// 포인트 충전 내역

	public List<PF_CoinDto> coin_selectAll(int user_no, int page);

	public int totalCount_coin(int user_no);

	public int coin(int user_no, String coin_state);

	// 포인트 충전
	public int coin_insert(int user_no, int coin_money, String coin_state);

	public int coin_update(int coin_no);
	public int CountCoin();
	
	// 동민 추가
	// 관리자 코인 환불 리스트
	public List<PF_CoinDto> refundList(String coin_state);
	
	// 관리자 코인 환불 승인
	public int coinState(String coin_state, int coin_no);
	
	// 투자자 보유 코인
	public int coinSum(String coin_state);
}
