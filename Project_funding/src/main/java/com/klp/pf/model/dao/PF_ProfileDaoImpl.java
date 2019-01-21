package com.klp.pf.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_ProfileDto;

@Repository
public class PF_ProfileDaoImpl implements PF_ProfileDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertProfile(PF_ProfileDto dto) {
		int res = sqlSession.insert(pf_profileNamespace+"insertProfile", dto);
		return res;
	}
	
	@Override
	public PF_ProfileDto selectProfile(int user_no) {
		PF_ProfileDto dto = sqlSession.selectOne(pf_profileNamespace+"selectProfile", user_no);
		return dto;
	}

}
