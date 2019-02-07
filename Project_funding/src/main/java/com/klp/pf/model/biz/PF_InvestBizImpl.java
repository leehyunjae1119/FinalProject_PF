package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_ApplicantDto;
import com.klp.pf.dto.PF_InvestDto;
import com.klp.pf.model.dao.PF_InvestDao;

@Service
public class PF_InvestBizImpl implements PF_InvestBiz {

	@Autowired
	PF_InvestDao pf_dao;
	
	
	@Override
	public List<PF_InvestDto> invest_seleceAll(int user_no) {
		return pf_dao.invest_seleceAll(user_no);
	}

	@Override
	public int invest_insert(int user_no, int invest_money,int board_no) {
		return pf_dao.invest_insert(user_no, invest_money,board_no);
	}

	@Override
	public int invest_total(int user_no, int invest_money, int board_no) {
		return pf_dao.invest_total(user_no, invest_money, board_no);
	}

	@Override
	public int select_projectinvest(int board_no) {
		return pf_dao.select_projectinvest(board_no);
	}

	// 프로젝트에 투자한 투자자 리스트
		@Override
		public List<PF_InvestDto> investerList(int board_no) {
			return pf_dao.investerList(board_no);
		}

}
