package com.klp.pf.model.biz;

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

}
