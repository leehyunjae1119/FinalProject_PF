package com.klp.pf.model.biz;

import java.util.List;

import com.klp.pf.dto.PF_PortfolioDto;

public interface PF_PortfolioBiz {

	public int insertPortfolio(PF_PortfolioDto dto);
	public List<PF_PortfolioDto> portfolioList(int profile_no);
	public int deletePortfolio(int portfolio_no);
	public PF_PortfolioDto selectOne(int portfolio_no);
}
