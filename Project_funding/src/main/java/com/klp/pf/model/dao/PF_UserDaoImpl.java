package com.klp.pf.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.klp.pf.dto.PF_UserDto;

@Repository
public class PF_UserDaoImpl implements PF_UserDao {
	
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
		int user_no = 0;
		if(res > 0) {
			user_no = dto.getUser_no();
		}
		return user_no;
	}
	@Override
	public boolean setUser_email(String user_email) {
		int res = sqlSession.update(pf_userNamespace+"setEmail", user_email);
		return (res > 0) ? true : false;
	}
	@Override
	public PF_UserDto cast(int user_no) {
		PF_UserDto res = sqlSession.selectOne(pf_userNamespace+"cast",user_no);
		return res;
	}
}
