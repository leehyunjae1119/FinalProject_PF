package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_InvestDto;

public interface PF_InvestDao {
	String pf_investNamespace="pf_invest.";
	public List<PF_InvestDto> invest_seleceAll(int user_no);
	public int invest_insert(int user_no,int invest_money,int board_no);
	public int invest_total(int user_no,int invest_money,int board_no);
	public int select_projectinvest(int board_no);
	
	// 투자중인 프로젝트에 지원한 투자자 목록
	public List<PF_InvestDto> investerList(int board_no);
	
}
