package com.klp.pf.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_TechnologyDto;

@Repository
public class PF_TechnologyDaoImpl implements PF_TechnologyDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertTechnology(List<PF_TechnologyDto> dtoList) {
		int res = sqlSession.update(pf_technologyNamespace+"insertTechnology", dtoList);
		return res;
	}

	@Override
	public List<PF_TechnologyDto> selectTech(int profile_no) {
		return sqlSession.selectList(pf_technologyNamespace+"selectTechnology", profile_no);
	}
	
	@Override
	public int deleteTechnology(int tech_no) {
		return sqlSession.delete(pf_technologyNamespace+"deleteTechnology", tech_no);
	}
}
