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
	public List<PF_CoinDto> coin_selectAll(int user_no) {
		return pf_dao.coin_selectAll(user_no);
	}

	@Override
	public int coin(int user_no, String coin_state) {
		return pf_dao.coin(user_no, coin_state);
	}

	@Override
	public int coin_insert(int user_no, int coin_money, String coin_state) {
		return pf_dao.coin_insert(user_no, coin_money, coin_state);
	}
}

