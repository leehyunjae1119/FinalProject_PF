package com.klp.pf.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klp.pf.dto.PF_PortfolioDto;
import com.klp.pf.model.dao.PF_PortfolioDao;

@Service
public class PF_PortfolioBizImpl implements PF_PortfolioBiz {
	
	@Autowired
	private PF_PortfolioDao pf_dao;

	@Override
	public int insertPortfolio(PF_PortfolioDto dto) {
		return pf_dao.insertPortfolio(dto);
	}

	@Override
	public List<PF_PortfolioDto> portfolioList(int profile_no) {
		// TODO Auto-generated method stub
		return pf_dao.portfolioList(profile_no);
	}
	
	@Override
	public int deletePortfolio(int portfolio_no) {
		return pf_dao.deletePortfolio(portfolio_no);
	}

	@Override
	public PF_PortfolioDto selectOne(int portfolio_no) {
		// TODO Auto-generated method stub
		return pf_dao.selectOne(portfolio_no);
	}

}
