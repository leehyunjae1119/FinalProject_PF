package com.klp.pf.model.dao;

import java.util.List;

import com.klp.pf.dto.PF_UserDto;

public interface PF_UserDao {
	String pf_userNamespace = "pf_user.";
	//네임스페이스는 테이블명+namespace 로 생성
	
	public PF_UserDto selectUser(String user_id);
	public int insertUser(PF_UserDto dto);
	public boolean setUser_email(String user_email);
	public List<PF_UserDto> userList(String user_type);
	

}
