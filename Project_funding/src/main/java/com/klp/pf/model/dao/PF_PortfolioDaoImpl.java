package com.klp.pf.model.dao;

import java.util.List;

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

	@Override
	public List<PF_PortfolioDto> portfolioList(int profile_no) {
		List<PF_PortfolioDto> portfoliolist = sqlSession.selectList(pf_portfolioNamespace+"portfolioList",profile_no);
	    return portfoliolist;
	}

	@Override
	public int deletePortfolio(int portfolio_no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(pf_portfolioNamespace+"deleteportfolio", portfolio_no);
	}

	@Override
	public PF_PortfolioDto selectOne(int portfolio_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(pf_portfolioNamespace+"portfolioView", portfolio_no);
	}

}
