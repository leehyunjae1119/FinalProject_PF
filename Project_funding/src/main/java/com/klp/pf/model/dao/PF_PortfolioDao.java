package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_PortfolioDto;

public interface PF_PortfolioDao {
	String pf_portfolioNamespace = "pf_portfolio.";
	//네임스페이스는 테이블명+namespace 로 생성
	
	public int insertPortfolio(PF_PortfolioDto dto);
	public List<PF_PortfolioDto> portfolioList(int profile_no);
	public int deletePortfolio(int portfolio_no);
	public PF_PortfolioDto selectOne(int portfolio_no);
}
