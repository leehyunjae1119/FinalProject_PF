package com.klp.pf.model.dao;

import com.klp.pf.dto.PF_PortfolioDto;

public interface PF_PortfolioDao {
	String pf_portfolioNamespace = "pf_portfolio.";
	//네임스페이스는 테이블명+namespace 로 생성
	
	public int insertPortfolio(PF_PortfolioDto dto);
}
