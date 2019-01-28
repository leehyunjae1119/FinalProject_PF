package com.klp.pf.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_InvestDto;

@Repository
public class PF_InvestDaoImpl implements PF_InvestDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<PF_InvestDto> invest_seleceAll(int user_no) {
		List<PF_InvestDto> list = new ArrayList<PF_InvestDto>();
		try {
		list=sqlSession.selectList(pf_investNamespace+"selectAll",user_no);
		}catch(Exception e) {
			System.out.println("selectAll에러");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int invest_insert(int user_no, int invest_money,int board_no) {
		int res=0;
//		Map<String,Object> investMap = new HashMap<String,Object>();
//		investMap.put("user_no",user_no);
//		investMap.put("invest_money", invest_money);

		PF_InvestDto dto = new PF_InvestDto(user_no, invest_money, board_no);
		try {
			res=sqlSession.insert(pf_investNamespace+"investInsert",dto);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int invest_total(int user_no, int invest_money, int board_no) {
		int invest=0;
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("user_no", user_no);
		map.put("invest_money", invest_money);
		map.put("board_no", board_no);
		
		try {
			invest=sqlSession.selectOne(pf_investNamespace+"select",map);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return invest;
	}

	@Override
	public int select_projectinvest(int board_no) {
		int res=sqlSession.selectOne(pf_investNamespace+"select_projectinvest",board_no);
		
		return res;
	}
	
	


}
