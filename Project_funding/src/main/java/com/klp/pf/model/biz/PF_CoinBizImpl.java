package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_CoinDto;
import com.klp.pf.model.dao.PF_CoinDao;

@Service
public class PF_CoinBizImpl implements PF_CoinBiz {

	@Autowired
	PF_CoinDao pf_dao;
	
	
	@Override
	public List<PF_CoinDto> coin_selectAll(int user_no,int page) {
		return pf_dao.coin_selectAll(user_no,page);
	}

	@Override
	public int totalCount_coin(int user_no) {
		return pf_dao.totalCount_coin(user_no);
	}

	@Override
	public int coin(int user_no, String coin_state) {
		return pf_dao.coin(user_no, coin_state);
	}

	@Override
	public int coin_insert(int user_no, int coin_money, String coin_state) {
		return pf_dao.coin_insert(user_no, coin_money, coin_state);
	}

	@Override
	public int coin_update(int coin_no) {
		return pf_dao.coin_update(coin_no);
	}

	// 동민 추가 부분
	// 관리자 코인 환불 리스트
	@Override
	public List<PF_CoinDto> refundList(String coin_state) {
		return pf_dao.refundList(coin_state);
	}

	// 관리자 코인 환불 승인
	@Override
	public int coinState(String coin_state, int coin_no) {
		return pf_dao.coinState(coin_state, coin_no);
	}

	// 투자자 보유 코인
	@Override
	public int coinSum(String coin_state) {
		return pf_dao.coinSum(coin_state);
	}
}

