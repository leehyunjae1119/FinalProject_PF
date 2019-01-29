package com.klp.pf.model.dao;

import java.util.HashMap;
import java.util.Map;

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
	public PF_UserDto login(String user_id, String user_pw) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("user_pw", user_pw);
		PF_UserDto dto = sqlSession.selectOne(pf_userNamespace+"login", map);	
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
	public int updateUser_type(PF_UserDto dto) {
		return sqlSession.update(pf_userNamespace+"updateUser_type", dto);
	}
	@Override
	public int deleteUser(PF_UserDto dto) {
		return sqlSession.update(pf_userNamespace+"deleteUser", dto);
	}
	@Override
	public int updateUser_Info(PF_UserDto dto) {
		return sqlSession.update(pf_userNamespace+"updateUser_Info", dto);
	}
}
