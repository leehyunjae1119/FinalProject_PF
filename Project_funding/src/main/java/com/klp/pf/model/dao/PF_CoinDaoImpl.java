package com.klp.pf.model.dao;

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
	
	// 동민 추가 부분
	// 관리자 코인 환불 리스트
	@Override
	public List<PF_CoinDto> refundList(String coin_state) {
		List<PF_CoinDto> res = sqlSession.selectList(pf_coinNamespace+"refundList",coin_state);
		return res;
	}
	
	// 관리자 코인 환불 승인
	@Override
	public int coinState(String coin_state, int coin_no) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("coin_state", coin_state);
		map.put("coin_no", Integer.toString(coin_no));
		
		int res = sqlSession.update(pf_coinNamespace+"coinState",map);
		return res;
	}
	
	// 투자자 보유 코인
	@Override
	public int coinSum(String coin_state) {
		int res = sqlSession.selectOne(pf_coinNamespace+"coinSum",coin_state);
		return res;
	}

}
