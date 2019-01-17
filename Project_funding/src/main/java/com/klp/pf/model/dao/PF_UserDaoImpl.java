package com.klp.pf.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_UserDto;

@Repository
public class PF_UserDaoImpl implements PF_Dao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public PF_UserDto selectUser(String user_id) {
		PF_UserDto dto = sqlSession.selectOne(pf_userNamespace+"selectUser", user_id);
		return dto;
	}
	
	@Override
	public int insertUser(PF_UserDto dto) {
		int res = sqlSession.insert(pf_userNamespace+"insertUser", dto);
		return res;
	}
}
