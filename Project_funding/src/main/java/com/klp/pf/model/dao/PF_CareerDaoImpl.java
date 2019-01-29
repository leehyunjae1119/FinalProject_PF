package com.klp.pf.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_CareerDto;

@Repository
public class PF_CareerDaoImpl implements PF_CareerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertCareer(List<PF_CareerDto> dtoList) {
		return sqlSession.update(pf_careerNamespace+"insertCareer", dtoList);
	}

	@Override
	public List<PF_CareerDto> selectCareer(int profile_no) {
		return sqlSession.selectList(pf_careerNamespace+"selectCareer", profile_no);
	}

	@Override
	public int deleteCareer(int career_no) {
		return sqlSession.delete(pf_careerNamespace+"deleteCareer", career_no);
	}

}
