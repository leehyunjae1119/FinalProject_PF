package com.klp.pf.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_CoinDto;
@Repository
public class PF_CoinDaoImpl implements PF_CoinDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<PF_CoinDto> coin_selectAll(int user_no, int page) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", page);
		map.put("user_no", user_no);
		List<PF_CoinDto> dto = sqlSession.selectList(pf_coinNamespace + "coin_paging", map);
		System.out.println(dto);
		return dto;

	}
	@Override
	public int totalCount_coin(int user_no) {
		int res = sqlSession.selectOne(pf_coinNamespace + "totalCount_coin", user_no);
		System.out.println(res);
		return res;
	}


	@Override
	public int coin(int user_no, String coin_state) {
		int coin=0;
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("user_no", user_no);
		map.put("coin_state", coin_state);
		try {
			coin=sqlSession.selectOne(pf_coinNamespace+"select",map);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return coin;
	}

	@Override
	public int coin_insert(int user_no, int coin_money, String coin_state) {
		int res = 0;
		Map<String, Object> coinMap = new HashMap<String, Object>();
		coinMap.put("user_no",user_no);
		coinMap.put("coin_money", coin_money);
		coinMap.put("coin_state", coin_state);
		
		try {
			res=sqlSession.insert(pf_coinNamespace+"coinInsert",coinMap);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int coin_update(int coin_no) {
		int res = 0;
		res=sqlSession.update(pf_coinNamespace+"refundMoney",coin_no);
		return res;
	}
	@Override
	public int CountCoin() {
		int res = sqlSession.selectOne(pf_coinNamespace + "CountCoin");
		return res;
	}

}
