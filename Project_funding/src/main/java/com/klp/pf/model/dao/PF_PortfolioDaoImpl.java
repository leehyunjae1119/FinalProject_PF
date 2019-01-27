package com.klp.pf.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_PortfolioDto;

@Repository
public class PF_PortfolioDaoImpl implements PF_PortfolioDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertPortfolio(PF_PortfolioDto dto) {
		int res = sqlSession.insert(pf_portfolioNamespace+"insertPortfolio", dto);
		return res;
	}

}
